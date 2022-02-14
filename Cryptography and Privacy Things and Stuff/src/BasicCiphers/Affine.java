package BasicCiphers;

public class Affine {

    String affineShift(String pt, int a, int b) {
        char[] msg = pt.toCharArray();

        /// Cipher Text initially empty
        StringBuilder cipher = new StringBuilder();
        for (char c : msg) {

            /* applying encryption formula ( a x + b ) mod m
            here x is msg[i] and m is 26} and added 'A' to
            bring it in range of ascii alphabet[ 65-90 | A-Z ] */
            if (c != ' ') {
                cipher.append((char) ((((a * (c - 'A')) + b) % 26) + 'A'));
            } else // else simply append space character
            {
                cipher.append(c);
            }
        }
        return cipher.toString();
    }

    String affineDeshift(String cipher, int a, int b) {
        StringBuilder msg = new StringBuilder();
        int a_inv = 0;
        int flag = 0;

        //Find a^-1 (the multiplicative inverse of a
        //in the group of integers modulo m.)
        for (int i = 0; i < 26; i++)
        {
            flag = (a * i) % 26;

            // Check if (a*i)%26 == 1,
            // then i will be the multiplicative inverse of a
            if (flag == 1)
            {
                a_inv = i;
            }
        }
        for (int i = 0; i < cipher.length(); i++)
        {
            /*Applying decryption formula a^-1 ( x - b ) mod m
            {here x is cipher[i] and m is 26} and added 'A'
            to bring it in range of ASCII alphabet[ 65-90 | A-Z ] */
            if (cipher.charAt(i) != ' ')
            {
                msg.append((char) (((a_inv * ((cipher.charAt(i) + 'A' - b)) % 26)) + 'A'));
            }
            else //else simply append space character
            {
                msg.append(cipher.charAt(i));
            }
        }

        return msg.toString();
    }

}

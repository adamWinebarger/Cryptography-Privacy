import BasicCiphers.*

class Driver {

    init {
        //testCaesar()
        println(UtilitZ.validChars1.size)
    }

    fun testCaesar() {
        val caesar = Caesar()
        val ct = caesar.encrypt("Hello World!", 15)
//        val pt = caesar.decrypt(ct, 15)
//        println(ct)
//        println(pt)

        for (i in 0..25) {
            val ptA = caesar.decrypt(ct, i)
            println(ptA)
        }
    }

    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            Driver()
        }
    }

}


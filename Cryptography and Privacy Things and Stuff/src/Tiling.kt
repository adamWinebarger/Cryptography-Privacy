

class Tiling {

    fun findLargestSquare(l : Int, w : Int) : Int {
        var length = l
        var width = w

        if (length == width)
            return width

        if (length > width) {
            val temp = length
            length = width
            width = temp
        }

        var a = width; var b = length; var q = a / b; var r = a % b

        while (r != 0) {
            a -= b

            if (b > a) {
                val temp = b
                b = a
                a = temp
            }

            q = a / b //So yeah, q is kinda useless here
            r = a % b
        }
        return b
    }



}
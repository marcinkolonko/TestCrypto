package
{
	import com.hurlant.crypto.Crypto;
	import com.hurlant.crypto.hash.SHA1;
	import com.hurlant.util.Base64;
	import com.hurlant.util.Hex;
	
	import flash.display.Sprite;
	import flash.utils.ByteArray;
	
	public class TestCrypto extends Sprite
	{
		private static var PASSWORD : String = "BestPasswordEver";
		
		public function TestCrypto()
		{
			super();
			
			var hash : SHA1 = Crypto.getHash("sha1") as SHA1;
			var data : ByteArray = hash.hash(Hex.toArray(Hex.fromString(PASSWORD)));
			trace(Hex.toString(Hex.fromArray(data)));
			trace(Base64.encodeByteArray(data));
		}
	}
}
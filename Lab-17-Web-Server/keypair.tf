resource "aws_key_pair" "syne-lab-terra"{
	key_name = "YOUR_KEY_PAIR_NAME"
	public_key = file("YOUR_KEY_FILE_NAME.pub")
}
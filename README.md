# wetransfer

This wonderfull step send files to wetransfer.

Wetransfer give you a short url to download files.

## Limitations

The limit for sending files is 2 GB at wetransfer in the free version.

If you try to send too many files to wetransfer in a short time, wetransfer will send you an error.


## Upcoming improvements

Don't hesite to propose improvements [here](https://github.com/kawaiseb/bitrise-step-wetransfer/issues)

Or directly a PR :)

## How to use this Step

Add the *wetransfer* step into your worflow.

Initialize inputs variables from the bitrise form.

* Email of the sender `$WTU_MAILSENDER` **required**
* One or more email separated by coma for receiver `$WTU_MAILRECEIVER` **required**

*Required*
Email of the sender
One or more email separated by coma for receiver
The path where are stored one or more files to upload
A little body for the mail

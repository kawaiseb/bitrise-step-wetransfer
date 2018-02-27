# bitrise-step-wetransfer

This wonderfull step send files to wetransfer.

Store the files you want to send to a directory. Indicate the directory in question in the step. All files in the directory will be sent to wetranfer and accessible to the recipient for download via a short url.

## Limitations

The limit for sending files is *2 GB* at wetransfer in the free version.

Files are available for *7 days*.

If you try to send too many files to wetransfer in a short time, wetransfer will send you an error.


## Upcoming improvements

Don't hesite to propose improvements [here](https://github.com/kawaiseb/bitrise-step-wetransfer/issues)

Or directly a PR :)

## How to use this Step

Add the *wetransfer* step into your worflow.

Initialize inputs variables from the bitrise form.

* Email of the sender `$WTU_MAILSENDER` **required**
* One or more email separated by coma for receiver `$WTU_MAILRECEIVER` **required**
* The path where are stored one or more files to upload `$WTU_FILEPATH` **required**

If in the target directory there is more than one file, these files will be compressed into a zip archive.

* A little body for the mail `$WTU_MESSAGE` **required**
* The language of the wetransfer receiver, *fr* for french (default) or *en* for english.
* Debug mode, *yes* or *no* (default)

Prints additional debug information in logs if this option is enabled

## Credit

![PagesJaunes](docs/pagesjaunes.png)


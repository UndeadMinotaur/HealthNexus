# README

## Query Example

Until there is an UI, you can query the address book like this:

Linux
install package `jq`, from terminal:

This would list all fax numbers of KVs:
```bash
cat addressbook.json | jq '.address_book[] | select(.labels[] == "Kassenärztliche Vereinigung") | .contact_info.fax'
```

Queries can be more complex. As a pro tip, paste an entry you'd wish to refactor-receive into GPT and kindly ask for the query if you do not know to write one ;-)
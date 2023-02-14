publish:
	APOLLO_KEY=service:Robin-bx2q2q:w15ZYjyu1gJ8W5GyjBHxoQ \
	rover subgraph publish Robin-bx2q2q@current --schema ./orders.graphql \
		--name orders --routing-url https://rob-orders-5ogd6b4rhq-uc.a.run.app

publish-staging:
	rover subgraph publish Tyler-Fed-Demo@staging --schema ./orders.graphql \
		--name orders --routing-url https://staging-orders-bhl6lhslfa-uc.a.run.app

check:
	rover subgraph check Tyler-Fed-Demo@prod \
	--schema=orders.graphql \
	--name=orders --validation-period=2w
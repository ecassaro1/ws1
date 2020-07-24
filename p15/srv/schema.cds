using p15 as my from '../db/schema';

service CatalogService {

	entity Books as projection on my.Books;
	entity Authors as select from my.Authors {
		*,
		null as numberOfBooks: Integer
	};
}
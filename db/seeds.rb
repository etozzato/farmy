AdminUser.create!(
  email: 'admin@example.com',
  password: 'p@ssw0rd',
  password_confirmation: 'p@ssw0rd'
)

Sector.create(name: 'Produção Vegetal')
sector = Sector.where(name: 'Produção Vegetal').first

ss = SubSector.find_or_create_by(name: 'Cereais, Leguminosas e Oleaginosas', sector: sector); fa = Family.find_or_create_by(name: 'Cereais', sector: sector, sub_sector: ss); 'Arroz, Trigo, Milho, Cevada, Triticale, Centeio, Aveia, Cevada, Colza, Sorgo, Outros'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Cereais, Leguminosas e Oleaginosas', sector: sector); fa = Family.find_or_create_by(name: 'Leguminosas e Oleaginosas', sector: sector, sub_sector: ss); 'Girassol, Soja, Ervilhas, Feijões, Grão-de-bico, Favas, Tremoços, Amendoim, Linhaça, Mostarda, Colza, Cártamo, Sésamo, Cultura de palmares para a produção de óleos'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Gramíneas, Forrageiras e Têxteis', sector: sector); fa = Family.find_or_create_by(name: 'Gramíneas e Forrageiras', sector: sector, sub_sector: ss); 'Cana-de-Açúcar, Milho-Verde, Cevada ,Trevo,Luzerna, Ervilhacas, Tremocilhas, Beterraba forrageira, Azévens, Panasco, Festucas, Poas'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Gramíneas, Forrageiras e Têxteis', sector: sector); fa = Family.find_or_create_by(name: 'Plantas Têxteis', sector: sector, sub_sector: ss); 'Algodão, Juta, Linho, Sisal, Ramie, Outras fibras vegetais,'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Flores e Plantas Ornamentais', sector: sector); fa = Family.find_or_create_by(name: 'Flores', sector: sector, sub_sector: ss); 'Flores (Tulipa, Violeta, Girassol, Orquídeas), '.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Flores e Plantas Ornamentais', sector: sector); fa = Family.find_or_create_by(name: 'Paisagismo e Plantas Ornamentais', sector: sector, sub_sector: ss); 'Tapetes de Relva, Plantas ornamentais, Suculentas '.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Ervas e Plantas Aromáticas', sector: sector); fa = Family.find_or_create_by(name: 'Ervas Aromáticas', sector: sector, sub_sector: ss); 'Orégão, Cebolinho, Coentro, Erva-Cidreira, Hortelã, Louro, Alecrim, Salsa, Manjericão, Tomilho, Açafrão, Gengibre, Pimenta, outros'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Ervas e Plantas Aromáticas', sector: sector); fa = Family.find_or_create_by(name: 'Plantas Comestíveis', sector: sector, sub_sector: ss); 'Capuchinha, Dente-de-Leão, Moringa, outros'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Ervas e Plantas Aromáticas', sector: sector); fa = Family.find_or_create_by(name: 'Plantas Estimulantes', sector: sector, sub_sector: ss); 'Chá, café, mate, cacau, outros'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Ervas e Plantas Aromáticas', sector: sector); fa = Family.find_or_create_by(name: 'Temperos', sector: sector, sub_sector: ss); 'Malagueta, Noz-moscada, Pimenta, Canela, Cravo da índia, Gengibre, Funcho, Baunilha, outros'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Horticultura', sector: sector); fa = Family.find_or_create_by(name: 'Bulbos, Raízes e Tubérculos', sector: sector, sub_sector: ss); 'Alho, Cebola, Alho frances, Batata, Batata-Doce, Mandioca, Inhame, Cenoura, Rabano, Nabo, Beterraba, Gengibre, Outros'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Horticultura', sector: sector); fa = Family.find_or_create_by(name: 'Verduras e Folhosas', sector: sector, sub_sector: ss); 'Alface, Rúcula, Agrião, Couve, Couve-Flor, Espargos, Brocolos, Repolho, Outros'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Horticultura', sector: sector); fa = Family.find_or_create_by(name: 'Frutos e Legumes', sector: sector, sub_sector: ss); 'Abóbora, Beringela, Pepino, Feijão verde, Abobrinha, Chuchu, Pimentão, Tomate, Ervilha, Vagem, Soja,  Melão, Melancia, Outros'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Fruticultura', sector: sector); fa = Family.find_or_create_by(name: 'Pequenos Frutos', sector: sector, sub_sector: ss); 'Mirtilos, Groselhas, GojiBerries, Framboesas, Amoras, Morangos, Kiwis, Romãs, Nêsperas, Diospiros'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Fruticultura', sector: sector); fa = Family.find_or_create_by(name: 'Frutos Tropicais', sector: sector, sub_sector: ss); 'abacates, bananas, tâmaras, figos, mangas, papaias, anonas, goiabas, ananases, abacaxis, outros frutos tropicais e subtropicais'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Fruticultura', sector: sector); fa = Family.find_or_create_by(name: 'Citrinos', sector: sector, sub_sector: ss); 'laranjas, tangerinas, mandarinas, clementinas, toranjas, limões, limas, outros citrinos'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Fruticultura', sector: sector); fa = Family.find_or_create_by(name: 'Pomóideas e Prunóideas', sector: sector, sub_sector: ss); 'maçãs, peras, marmelos, pêssegos, cerejas, nectarinas, ginjas, alperces, ameixas, abrunhos'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Fruticultura', sector: sector); fa = Family.find_or_create_by(name: 'Frutos de Casca Rija', sector: sector, sub_sector: ss); 'amêndoa, castanha, avelã, noz, castanha de caju, outros frutos de casca rija'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Viticultura e Olivicultura', sector: sector); fa = Family.find_or_create_by(name: 'Viticultura', sector: sector, sub_sector: ss); 'uvas de mesa, uvas para vinho'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Viticultura e Olivicultura', sector: sector); fa = Family.find_or_create_by(name: 'Olivicultura', sector: sector, sub_sector: ss); 'azeitonas de mesa; Azeitonas para azeite'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Silvicultura e Exploração Florestal', sector: sector); fa = Family.find_or_create_by(name: 'Productos Madeireiros', sector: sector, sub_sector: ss); 'Material lenhoso passível de aproveitamento; estacas; lenha; poste; moirão; briquetes; lenhas; carvões; celulose; compensados; laminados; madeira serrada; madeira tratada; painéis de fibra, papel e cartão'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Silvicultura e Exploração Florestal', sector: sector); fa = Family.find_or_create_by(name: 'Productos não-madeireiros', sector: sector, sub_sector: ss); 'cogumelos, resinas, gomas, borrachas, plantas medicinais, carvão vegetal, cipó, óleo, sementes, plantas ornamentais'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Silvicultura e Exploração Florestal', sector: sector); fa = Family.find_or_create_by(name: 'Viveiros Florestais', sector: sector, sub_sector: ss); 'Sementes de espécies florestais, Mudas e outros materiais florestais de reprodução'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Silvicultura e Exploração Florestal', sector: sector); fa = Family.find_or_create_by(name: 'Serviços Florestais', sector: sector, sub_sector: ss); ''.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Propagação Vegetativa e tecnologia de sementes', sector: sector); fa = Family.find_or_create_by(name: 'Sementes', sector: sector, sub_sector: ss); 'Sementes'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Propagação Vegetativa e tecnologia de sementes', sector: sector); fa = Family.find_or_create_by(name: 'Materiais Vegetativos', sector: sector, sub_sector: ss); 'Bolbos, Tubérculos, Raízes, Estacas, Garfos, Gomas, Estolhos, Rebentos, Rizomas em vegetação ou em flor, Plantas de viveiro, Micélios de cogumelos, Alporques, Outras culturas para plantação'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}
ss = SubSector.find_or_create_by(name: 'Aquacultura', sector: sector); fa = Family.find_or_create_by(name: 'Produção de Algas', sector: sector, sub_sector: ss); 'Spirulina, outras microalgas'.split(/,|;/).each{|el| Product.create(sector: sector, sub_sector: ss, family: fa, name: el.strip)}

Company.create({
   "name"=>"Câmara Municipal de Lagos",
   "description"=>"City or town hall in Lagos, Portugal",
   "nif"=>"101",
   "address"=>"Praça Gil Eannes, 8600-293 Lagos, Portugal",
   "longitude"=>-8.67289,
   "latitude"=>37.10272,
   "district_id"=>nil,
   "area_id"=>nil,
   "neighbour_id"=>nil,
   "phone"=>"282 780 900",
   "mobile_phone"=>"",
   "email"=>"info@cm-lagos.pt",
   "email2"=>"",
   "website"=>"https://www.cm-lagos.pt/",
   "facebook"=>"",
   "twitter"=>"",
   "google_plus"=>"",
   "is_public"=>true,
   "is_active"=>true,
   "is_company"=>true
 })

 Sku.create({
   "name"=>"Abacate de Lagos",
   "is_active"=>true,
   "company_id"=> 1,
   "variety"=>"TIGER",
   "caliber"=>3.0,
   "description"=>"not a real product",
   "availability_data"=>"n/a",
   "harvest_forecast"=>"October",
   "perishability_period"=>"21 days",
   "available_kg"=>3213.0,
   "price_per_kg"=>1.5,
   "price_per_unit"=>nil,
   "minimum_sale_quantity"=>100.0,
   "delivery_method"=>nil,
   "delivery_from"=>nil,
   "delivery_to"=>nil,
   "additional_information"=>nil,
   "origin_location"=>"Lagos, Algarve",
   "lon"=>nil,
   "lat"=>nil,
   "production_type"=>2,
   "production_certification"=>1,
   "product_id"=>130,
   "sub_sector_id"=>6,
   "sector_id"=>1,
   "family_id"=>15
 })

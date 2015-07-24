[
  { slug: 'bogdan', name: 'Bogdan Dumitru', email: 'bogdan@anyroad.com' },
  { slug: 'dimitris', name: 'Dimitris Vainas', email: 'dimitris@anyroad.com' },
  { slug: 'plawressanshiro', name: 'Giannis Tziligkakis', email: 'giannis@anyroad.com' },
  { slug: 'theminijohn', name: 'Ioannis Miniadis', email: 'minijohn@anyroad.com' },
  { slug: 'gkats', name: 'Giannis Katsanos', email: 'gkats@anyroad.com' },
  { slug: 'gnikolas', name: 'Nikolas Georgoudelis', email: 'nikolas@anyroad.com' }
].each do |attrs|
  Developer.create!(attrs)
end

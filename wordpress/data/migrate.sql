UPDATE wp_options SET option_value = replace(option_value, 'oldUrl', 'http://localhost:3500') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = replace(guid, 'oldUrl','http://localhost:3500');
UPDATE wp_posts SET post_content = replace(post_content, 'oldUrl', 'http://localhost:3500');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'oldUrl','http://localhost:3500');
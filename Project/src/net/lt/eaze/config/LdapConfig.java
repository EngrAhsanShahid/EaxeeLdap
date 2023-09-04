package net.lt.eaze.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.ldap.core.ContextSource;
import org.springframework.ldap.core.LdapTemplate;
import org.springframework.ldap.core.support.LdapContextSource;

@Configuration
public class LdapConfig {

//    @Bean
//    public LdapTemplate ldapTemplate() {
//        LdapTemplate ldapTemplate = new LdapTemplate();
//        ldapTemplate.setContextSource(contextSource());
//        return ldapTemplate;
//    }

//    @Bean
//    public ContextSource contextSource() {
//        LdapContextSource contextSource = new LdapContextSource();
//        contextSource.setUrl("ldap://127.0.0.1:10389");
//        contextSource.setBase("ou=system");
//        contextSource.setUserDn("uid=admin,ou=system");
//        contextSource.setPassword("secret");
//        return contextSource;
//    }
}





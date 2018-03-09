--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO mmuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO mmuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO mmuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO mmuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO mmuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO mmuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO mmuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO mmuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO mmuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO mmuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO mmuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO mmuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO mmuser;

--
-- Name: gql_platform_genre; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.gql_platform_genre (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.gql_platform_genre OWNER TO mmuser;

--
-- Name: gql_platform_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.gql_platform_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gql_platform_genre_id_seq OWNER TO mmuser;

--
-- Name: gql_platform_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.gql_platform_genre_id_seq OWNED BY public.gql_platform_genre.id;


--
-- Name: gql_platform_serialization; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.gql_platform_serialization (
    id integer NOT NULL,
    title character varying(150) NOT NULL
);


ALTER TABLE public.gql_platform_serialization OWNER TO mmuser;

--
-- Name: gql_platform_serialization_genres; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.gql_platform_serialization_genres (
    id integer NOT NULL,
    serialization_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.gql_platform_serialization_genres OWNER TO mmuser;

--
-- Name: gql_platform_serialization_genres_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.gql_platform_serialization_genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gql_platform_serialization_genres_id_seq OWNER TO mmuser;

--
-- Name: gql_platform_serialization_genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.gql_platform_serialization_genres_id_seq OWNED BY public.gql_platform_serialization_genres.id;


--
-- Name: gql_platform_serialization_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.gql_platform_serialization_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gql_platform_serialization_id_seq OWNER TO mmuser;

--
-- Name: gql_platform_serialization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.gql_platform_serialization_id_seq OWNED BY public.gql_platform_serialization.id;


--
-- Name: gql_platform_userstatus; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.gql_platform_userstatus (
    id integer NOT NULL,
    text text NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.gql_platform_userstatus OWNER TO mmuser;

--
-- Name: gql_platform_userstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.gql_platform_userstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gql_platform_userstatus_id_seq OWNER TO mmuser;

--
-- Name: gql_platform_userstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.gql_platform_userstatus_id_seq OWNED BY public.gql_platform_userstatus.id;


--
-- Name: misago_acl_role; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_acl_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    special_role character varying(255),
    permissions jsonb NOT NULL
);


ALTER TABLE public.misago_acl_role OWNER TO mmuser;

--
-- Name: misago_acl_role_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_acl_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_acl_role_id_seq OWNER TO mmuser;

--
-- Name: misago_acl_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_acl_role_id_seq OWNED BY public.misago_acl_role.id;


--
-- Name: misago_categories_category; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_categories_category (
    id integer NOT NULL,
    special_role character varying(255),
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text,
    is_closed boolean NOT NULL,
    threads integer NOT NULL,
    posts integer NOT NULL,
    last_thread_title character varying(255),
    last_thread_slug character varying(255),
    last_poster_name character varying(255),
    last_poster_slug character varying(255),
    last_post_on timestamp with time zone,
    prune_started_after integer NOT NULL,
    prune_replied_after integer NOT NULL,
    css_class character varying(255),
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    archive_pruned_in_id integer,
    last_poster_id integer,
    parent_id integer,
    last_thread_id integer,
    require_edits_approval boolean NOT NULL,
    require_replies_approval boolean NOT NULL,
    require_threads_approval boolean NOT NULL,
    CONSTRAINT misago_categories_category_level_check CHECK ((level >= 0)),
    CONSTRAINT misago_categories_category_lft_check CHECK ((lft >= 0)),
    CONSTRAINT misago_categories_category_posts_check CHECK ((posts >= 0)),
    CONSTRAINT misago_categories_category_prune_replied_after_check CHECK ((prune_replied_after >= 0)),
    CONSTRAINT misago_categories_category_prune_started_after_check CHECK ((prune_started_after >= 0)),
    CONSTRAINT misago_categories_category_rght_check CHECK ((rght >= 0)),
    CONSTRAINT misago_categories_category_threads_check CHECK ((threads >= 0)),
    CONSTRAINT misago_categories_category_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.misago_categories_category OWNER TO mmuser;

--
-- Name: misago_categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_categories_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_categories_category_id_seq OWNER TO mmuser;

--
-- Name: misago_categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_categories_category_id_seq OWNED BY public.misago_categories_category.id;


--
-- Name: misago_categories_categoryrole; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_categories_categoryrole (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    special_role character varying(255),
    permissions jsonb NOT NULL
);


ALTER TABLE public.misago_categories_categoryrole OWNER TO mmuser;

--
-- Name: misago_categories_categoryrole_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_categories_categoryrole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_categories_categoryrole_id_seq OWNER TO mmuser;

--
-- Name: misago_categories_categoryrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_categories_categoryrole_id_seq OWNED BY public.misago_categories_categoryrole.id;


--
-- Name: misago_categories_rolecategoryacl; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_categories_rolecategoryacl (
    id integer NOT NULL,
    category_id integer NOT NULL,
    category_role_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.misago_categories_rolecategoryacl OWNER TO mmuser;

--
-- Name: misago_categories_rolecategoryacl_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_categories_rolecategoryacl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_categories_rolecategoryacl_id_seq OWNER TO mmuser;

--
-- Name: misago_categories_rolecategoryacl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_categories_rolecategoryacl_id_seq OWNED BY public.misago_categories_rolecategoryacl.id;


--
-- Name: misago_conf_setting; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_conf_setting (
    id integer NOT NULL,
    setting character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    legend character varying(255),
    "order" integer NOT NULL,
    dry_value text,
    default_value text,
    python_type character varying(255) NOT NULL,
    is_public boolean NOT NULL,
    is_lazy boolean NOT NULL,
    form_field character varying(255) NOT NULL,
    field_extra jsonb NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.misago_conf_setting OWNER TO mmuser;

--
-- Name: misago_conf_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_conf_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_conf_setting_id_seq OWNER TO mmuser;

--
-- Name: misago_conf_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_conf_setting_id_seq OWNED BY public.misago_conf_setting.id;


--
-- Name: misago_conf_settingsgroup; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_conf_settingsgroup (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    description text
);


ALTER TABLE public.misago_conf_settingsgroup OWNER TO mmuser;

--
-- Name: misago_conf_settingsgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_conf_settingsgroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_conf_settingsgroup_id_seq OWNER TO mmuser;

--
-- Name: misago_conf_settingsgroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_conf_settingsgroup_id_seq OWNED BY public.misago_conf_settingsgroup.id;


--
-- Name: misago_core_cacheversion; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_core_cacheversion (
    id integer NOT NULL,
    cache character varying(128) NOT NULL,
    version integer NOT NULL,
    CONSTRAINT misago_core_cacheversion_version_check CHECK ((version >= 0))
);


ALTER TABLE public.misago_core_cacheversion OWNER TO mmuser;

--
-- Name: misago_core_cacheversion_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_core_cacheversion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_core_cacheversion_id_seq OWNER TO mmuser;

--
-- Name: misago_core_cacheversion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_core_cacheversion_id_seq OWNED BY public.misago_core_cacheversion.id;


--
-- Name: misago_readtracker_postread; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_readtracker_postread (
    id integer NOT NULL,
    last_read_on timestamp with time zone NOT NULL,
    category_id integer NOT NULL,
    post_id integer NOT NULL,
    thread_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.misago_readtracker_postread OWNER TO mmuser;

--
-- Name: misago_readtracker_postread_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_readtracker_postread_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_readtracker_postread_id_seq OWNER TO mmuser;

--
-- Name: misago_readtracker_postread_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_readtracker_postread_id_seq OWNED BY public.misago_readtracker_postread.id;


--
-- Name: misago_threads_attachment; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_attachment (
    id integer NOT NULL,
    secret character varying(64) NOT NULL,
    uploaded_on timestamp with time zone NOT NULL,
    uploader_name character varying(255) NOT NULL,
    uploader_slug character varying(255) NOT NULL,
    uploader_ip inet NOT NULL,
    filename character varying(255) NOT NULL,
    size integer NOT NULL,
    thumbnail character varying(255),
    image character varying(255),
    file character varying(255),
    post_id integer,
    filetype_id integer NOT NULL,
    uploader_id integer,
    CONSTRAINT misago_threads_attachment_size_check CHECK ((size >= 0))
);


ALTER TABLE public.misago_threads_attachment OWNER TO mmuser;

--
-- Name: misago_threads_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_attachment_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_attachment_id_seq OWNED BY public.misago_threads_attachment.id;


--
-- Name: misago_threads_attachmenttype; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_attachmenttype (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    extensions character varying(255) NOT NULL,
    mimetypes character varying(255),
    size_limit integer NOT NULL,
    status integer NOT NULL,
    CONSTRAINT misago_threads_attachmenttype_size_limit_check CHECK ((size_limit >= 0)),
    CONSTRAINT misago_threads_attachmenttype_status_check CHECK ((status >= 0))
);


ALTER TABLE public.misago_threads_attachmenttype OWNER TO mmuser;

--
-- Name: misago_threads_attachmenttype_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_attachmenttype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_attachmenttype_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_attachmenttype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_attachmenttype_id_seq OWNED BY public.misago_threads_attachmenttype.id;


--
-- Name: misago_threads_attachmenttype_limit_downloads_to; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_attachmenttype_limit_downloads_to (
    id integer NOT NULL,
    attachmenttype_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.misago_threads_attachmenttype_limit_downloads_to OWNER TO mmuser;

--
-- Name: misago_threads_attachmenttype_limit_downloads_to_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_attachmenttype_limit_downloads_to_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_attachmenttype_limit_downloads_to_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_attachmenttype_limit_downloads_to_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_attachmenttype_limit_downloads_to_id_seq OWNED BY public.misago_threads_attachmenttype_limit_downloads_to.id;


--
-- Name: misago_threads_attachmenttype_limit_uploads_to; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_attachmenttype_limit_uploads_to (
    id integer NOT NULL,
    attachmenttype_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.misago_threads_attachmenttype_limit_uploads_to OWNER TO mmuser;

--
-- Name: misago_threads_attachmenttype_limit_uploads_to_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_attachmenttype_limit_uploads_to_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_attachmenttype_limit_uploads_to_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_attachmenttype_limit_uploads_to_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_attachmenttype_limit_uploads_to_id_seq OWNED BY public.misago_threads_attachmenttype_limit_uploads_to.id;


--
-- Name: misago_threads_poll; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_poll (
    id integer NOT NULL,
    poster_name character varying(255) NOT NULL,
    poster_slug character varying(255) NOT NULL,
    poster_ip inet NOT NULL,
    posted_on timestamp with time zone NOT NULL,
    length integer NOT NULL,
    question character varying(255) NOT NULL,
    choices jsonb NOT NULL,
    allowed_choices integer NOT NULL,
    allow_revotes boolean NOT NULL,
    votes integer NOT NULL,
    is_public boolean NOT NULL,
    category_id integer NOT NULL,
    poster_id integer,
    thread_id integer NOT NULL,
    CONSTRAINT misago_threads_poll_allowed_choices_check CHECK ((allowed_choices >= 0)),
    CONSTRAINT misago_threads_poll_length_check CHECK ((length >= 0)),
    CONSTRAINT misago_threads_poll_votes_check CHECK ((votes >= 0))
);


ALTER TABLE public.misago_threads_poll OWNER TO mmuser;

--
-- Name: misago_threads_poll_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_poll_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_poll_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_poll_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_poll_id_seq OWNED BY public.misago_threads_poll.id;


--
-- Name: misago_threads_pollvote; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_pollvote (
    id integer NOT NULL,
    voter_name character varying(255) NOT NULL,
    voter_slug character varying(255) NOT NULL,
    voter_ip inet NOT NULL,
    voted_on timestamp with time zone NOT NULL,
    choice_hash character varying(12) NOT NULL,
    category_id integer NOT NULL,
    poll_id integer NOT NULL,
    thread_id integer NOT NULL,
    voter_id integer
);


ALTER TABLE public.misago_threads_pollvote OWNER TO mmuser;

--
-- Name: misago_threads_pollvote_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_pollvote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_pollvote_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_pollvote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_pollvote_id_seq OWNED BY public.misago_threads_pollvote.id;


--
-- Name: misago_threads_post; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_post (
    id integer NOT NULL,
    poster_name character varying(255) NOT NULL,
    poster_ip inet NOT NULL,
    original text NOT NULL,
    parsed text NOT NULL,
    checksum character varying(64) NOT NULL,
    attachments_cache jsonb,
    posted_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    edits integer NOT NULL,
    last_editor_name character varying(255),
    last_editor_slug character varying(255),
    hidden_by_id integer,
    hidden_by_name character varying(255),
    hidden_by_slug character varying(255),
    hidden_on timestamp with time zone NOT NULL,
    has_reports boolean NOT NULL,
    has_open_reports boolean NOT NULL,
    is_unapproved boolean NOT NULL,
    is_hidden boolean NOT NULL,
    is_protected boolean NOT NULL,
    category_id integer NOT NULL,
    last_editor_id integer,
    poster_id integer,
    is_event boolean NOT NULL,
    event_type character varying(255),
    event_context jsonb,
    likes integer NOT NULL,
    last_likes jsonb,
    search_document text,
    search_vector tsvector NOT NULL,
    thread_id integer NOT NULL,
    CONSTRAINT misago_threads_post_edits_check CHECK ((edits >= 0)),
    CONSTRAINT misago_threads_post_likes_check CHECK ((likes >= 0))
);


ALTER TABLE public.misago_threads_post OWNER TO mmuser;

--
-- Name: misago_threads_post_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_post_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_post_id_seq OWNED BY public.misago_threads_post.id;


--
-- Name: misago_threads_post_mentions; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_post_mentions (
    id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.misago_threads_post_mentions OWNER TO mmuser;

--
-- Name: misago_threads_post_mentions_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_post_mentions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_post_mentions_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_post_mentions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_post_mentions_id_seq OWNED BY public.misago_threads_post_mentions.id;


--
-- Name: misago_threads_postedit; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_postedit (
    id integer NOT NULL,
    edited_on timestamp with time zone NOT NULL,
    editor_name character varying(255) NOT NULL,
    editor_slug character varying(255) NOT NULL,
    editor_ip inet NOT NULL,
    edited_from text NOT NULL,
    edited_to text NOT NULL,
    category_id integer NOT NULL,
    editor_id integer,
    post_id integer NOT NULL,
    thread_id integer NOT NULL
);


ALTER TABLE public.misago_threads_postedit OWNER TO mmuser;

--
-- Name: misago_threads_postedit_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_postedit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_postedit_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_postedit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_postedit_id_seq OWNED BY public.misago_threads_postedit.id;


--
-- Name: misago_threads_postlike; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_postlike (
    id integer NOT NULL,
    liker_name character varying(255) NOT NULL,
    liker_slug character varying(255) NOT NULL,
    liker_ip inet NOT NULL,
    liked_on timestamp with time zone NOT NULL,
    category_id integer NOT NULL,
    post_id integer NOT NULL,
    thread_id integer NOT NULL,
    liker_id integer
);


ALTER TABLE public.misago_threads_postlike OWNER TO mmuser;

--
-- Name: misago_threads_postlike_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_postlike_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_postlike_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_postlike_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_postlike_id_seq OWNED BY public.misago_threads_postlike.id;


--
-- Name: misago_threads_subscription; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_subscription (
    id integer NOT NULL,
    last_read_on timestamp with time zone NOT NULL,
    send_email boolean NOT NULL,
    category_id integer NOT NULL,
    thread_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.misago_threads_subscription OWNER TO mmuser;

--
-- Name: misago_threads_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_subscription_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_subscription_id_seq OWNED BY public.misago_threads_subscription.id;


--
-- Name: misago_threads_thread; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_thread (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    replies integer NOT NULL,
    has_events boolean NOT NULL,
    has_poll boolean NOT NULL,
    has_reported_posts boolean NOT NULL,
    has_open_reports boolean NOT NULL,
    has_unapproved_posts boolean NOT NULL,
    has_hidden_posts boolean NOT NULL,
    started_on timestamp with time zone NOT NULL,
    starter_name character varying(255) NOT NULL,
    starter_slug character varying(255) NOT NULL,
    last_post_is_event boolean NOT NULL,
    last_post_on timestamp with time zone NOT NULL,
    last_poster_name character varying(255),
    last_poster_slug character varying(255),
    weight integer NOT NULL,
    is_unapproved boolean NOT NULL,
    is_hidden boolean NOT NULL,
    is_closed boolean NOT NULL,
    first_post_id integer,
    category_id integer NOT NULL,
    last_post_id integer,
    last_poster_id integer,
    starter_id integer,
    CONSTRAINT misago_threads_thread_replies_check CHECK ((replies >= 0)),
    CONSTRAINT misago_threads_thread_weight_check CHECK ((weight >= 0))
);


ALTER TABLE public.misago_threads_thread OWNER TO mmuser;

--
-- Name: misago_threads_thread_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_thread_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_thread_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_thread_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_thread_id_seq OWNED BY public.misago_threads_thread.id;


--
-- Name: misago_threads_threadparticipant; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_threads_threadparticipant (
    id integer NOT NULL,
    thread_id integer NOT NULL,
    user_id integer NOT NULL,
    is_owner boolean NOT NULL
);


ALTER TABLE public.misago_threads_threadparticipant OWNER TO mmuser;

--
-- Name: misago_threads_threadparticipant_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_threads_threadparticipant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_threads_threadparticipant_id_seq OWNER TO mmuser;

--
-- Name: misago_threads_threadparticipant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_threads_threadparticipant_id_seq OWNED BY public.misago_threads_threadparticipant.id;


--
-- Name: misago_users_activityranking; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_activityranking (
    id integer NOT NULL,
    user_id integer NOT NULL,
    score integer NOT NULL,
    CONSTRAINT misago_users_activityranking_score_check CHECK ((score >= 0))
);


ALTER TABLE public.misago_users_activityranking OWNER TO mmuser;

--
-- Name: misago_users_activityranking_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_activityranking_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_activityranking_id_seq OWNER TO mmuser;

--
-- Name: misago_users_activityranking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_activityranking_id_seq OWNED BY public.misago_users_activityranking.id;


--
-- Name: misago_users_avatar; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_avatar (
    id integer NOT NULL,
    user_id integer NOT NULL,
    size integer NOT NULL,
    image character varying(255) NOT NULL,
    CONSTRAINT misago_users_avatar_size_check CHECK ((size >= 0))
);


ALTER TABLE public.misago_users_avatar OWNER TO mmuser;

--
-- Name: misago_users_avatar_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_avatar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_avatar_id_seq OWNER TO mmuser;

--
-- Name: misago_users_avatar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_avatar_id_seq OWNED BY public.misago_users_avatar.id;


--
-- Name: misago_users_avatargallery; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_avatargallery (
    id integer NOT NULL,
    gallery character varying(255) NOT NULL,
    image character varying(255) NOT NULL
);


ALTER TABLE public.misago_users_avatargallery OWNER TO mmuser;

--
-- Name: misago_users_avatargallery_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_avatargallery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_avatargallery_id_seq OWNER TO mmuser;

--
-- Name: misago_users_avatargallery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_avatargallery_id_seq OWNED BY public.misago_users_avatargallery.id;


--
-- Name: misago_users_ban; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_ban (
    id integer NOT NULL,
    check_type integer NOT NULL,
    banned_value character varying(255) NOT NULL,
    user_message text,
    staff_message text,
    expires_on timestamp with time zone,
    is_checked boolean NOT NULL,
    registration_only boolean NOT NULL,
    CONSTRAINT misago_users_ban_check_type_check CHECK ((check_type >= 0))
);


ALTER TABLE public.misago_users_ban OWNER TO mmuser;

--
-- Name: misago_users_ban_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_ban_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_ban_id_seq OWNER TO mmuser;

--
-- Name: misago_users_ban_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_ban_id_seq OWNED BY public.misago_users_ban.id;


--
-- Name: misago_users_bancache; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_bancache (
    user_message text,
    staff_message text,
    bans_version integer NOT NULL,
    expires_on timestamp with time zone,
    ban_id integer,
    user_id integer NOT NULL,
    CONSTRAINT misago_users_bancache_bans_version_check CHECK ((bans_version >= 0))
);


ALTER TABLE public.misago_users_bancache OWNER TO mmuser;

--
-- Name: misago_users_online; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_online (
    current_ip inet NOT NULL,
    last_click timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.misago_users_online OWNER TO mmuser;

--
-- Name: misago_users_rank; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_rank (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text,
    title character varying(255),
    css_class character varying(255),
    is_default boolean NOT NULL,
    is_tab boolean NOT NULL,
    "order" integer NOT NULL
);


ALTER TABLE public.misago_users_rank OWNER TO mmuser;

--
-- Name: misago_users_rank_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_rank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_rank_id_seq OWNER TO mmuser;

--
-- Name: misago_users_rank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_rank_id_seq OWNED BY public.misago_users_rank.id;


--
-- Name: misago_users_rank_roles; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_rank_roles (
    id integer NOT NULL,
    rank_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.misago_users_rank_roles OWNER TO mmuser;

--
-- Name: misago_users_rank_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_rank_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_rank_roles_id_seq OWNER TO mmuser;

--
-- Name: misago_users_rank_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_rank_roles_id_seq OWNED BY public.misago_users_rank_roles.id;


--
-- Name: misago_users_user; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    username character varying(30) NOT NULL,
    slug character varying(30) NOT NULL,
    email character varying(255) NOT NULL,
    email_hash character varying(32) NOT NULL,
    joined_on timestamp with time zone NOT NULL,
    joined_from_ip inet NOT NULL,
    last_ip inet,
    is_hiding_presence boolean NOT NULL,
    title character varying(255),
    requires_activation integer NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL,
    acl_key character varying(12),
    is_active boolean NOT NULL,
    is_active_staff_message text,
    avatar_tmp character varying(255),
    avatar_src character varying(255),
    avatar_crop character varying(255),
    avatars jsonb,
    is_avatar_locked boolean NOT NULL,
    avatar_lock_user_message text,
    avatar_lock_staff_message text,
    signature text,
    signature_parsed text,
    signature_checksum character varying(64),
    is_signature_locked boolean NOT NULL,
    signature_lock_user_message text,
    signature_lock_staff_message text,
    following integer NOT NULL,
    followers integer NOT NULL,
    limits_private_thread_invites_to integer NOT NULL,
    unread_private_threads integer NOT NULL,
    sync_unread_private_threads boolean NOT NULL,
    subscribe_to_started_threads integer NOT NULL,
    subscribe_to_replied_threads integer NOT NULL,
    threads integer NOT NULL,
    posts integer NOT NULL,
    last_posted_on timestamp with time zone,
    rank_id integer,
    profile_fields public.hstore NOT NULL,
    CONSTRAINT misago_users_user_followers_check CHECK ((followers >= 0)),
    CONSTRAINT misago_users_user_following_check CHECK ((following >= 0)),
    CONSTRAINT misago_users_user_limits_private_thread_invites_to_check CHECK ((limits_private_thread_invites_to >= 0)),
    CONSTRAINT misago_users_user_posts_check CHECK ((posts >= 0)),
    CONSTRAINT misago_users_user_requires_activation_check CHECK ((requires_activation >= 0)),
    CONSTRAINT misago_users_user_subscribe_to_replied_threads_check CHECK ((subscribe_to_replied_threads >= 0)),
    CONSTRAINT misago_users_user_subscribe_to_started_threads_check CHECK ((subscribe_to_started_threads >= 0)),
    CONSTRAINT misago_users_user_threads_check CHECK ((threads >= 0)),
    CONSTRAINT misago_users_user_unread_private_threads_check CHECK ((unread_private_threads >= 0))
);


ALTER TABLE public.misago_users_user OWNER TO mmuser;

--
-- Name: misago_users_user_blocks; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_user_blocks (
    id integer NOT NULL,
    from_user_id integer NOT NULL,
    to_user_id integer NOT NULL
);


ALTER TABLE public.misago_users_user_blocks OWNER TO mmuser;

--
-- Name: misago_users_user_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_user_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_user_blocks_id_seq OWNER TO mmuser;

--
-- Name: misago_users_user_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_user_blocks_id_seq OWNED BY public.misago_users_user_blocks.id;


--
-- Name: misago_users_user_follows; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_user_follows (
    id integer NOT NULL,
    from_user_id integer NOT NULL,
    to_user_id integer NOT NULL
);


ALTER TABLE public.misago_users_user_follows OWNER TO mmuser;

--
-- Name: misago_users_user_follows_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_user_follows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_user_follows_id_seq OWNER TO mmuser;

--
-- Name: misago_users_user_follows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_user_follows_id_seq OWNED BY public.misago_users_user_follows.id;


--
-- Name: misago_users_user_groups; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.misago_users_user_groups OWNER TO mmuser;

--
-- Name: misago_users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_user_groups_id_seq OWNER TO mmuser;

--
-- Name: misago_users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_user_groups_id_seq OWNED BY public.misago_users_user_groups.id;


--
-- Name: misago_users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_user_id_seq OWNER TO mmuser;

--
-- Name: misago_users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_user_id_seq OWNED BY public.misago_users_user.id;


--
-- Name: misago_users_user_roles; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_user_roles (
    id integer NOT NULL,
    user_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.misago_users_user_roles OWNER TO mmuser;

--
-- Name: misago_users_user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_user_roles_id_seq OWNER TO mmuser;

--
-- Name: misago_users_user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_user_roles_id_seq OWNED BY public.misago_users_user_roles.id;


--
-- Name: misago_users_user_user_permissions; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.misago_users_user_user_permissions OWNER TO mmuser;

--
-- Name: misago_users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_user_user_permissions_id_seq OWNER TO mmuser;

--
-- Name: misago_users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_user_user_permissions_id_seq OWNED BY public.misago_users_user_user_permissions.id;


--
-- Name: misago_users_usernamechange; Type: TABLE; Schema: public; Owner: mmuser
--

CREATE TABLE public.misago_users_usernamechange (
    id integer NOT NULL,
    changed_by_username character varying(30) NOT NULL,
    changed_on timestamp with time zone NOT NULL,
    new_username character varying(255) NOT NULL,
    old_username character varying(255) NOT NULL,
    changed_by_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public.misago_users_usernamechange OWNER TO mmuser;

--
-- Name: misago_users_usernamechange_id_seq; Type: SEQUENCE; Schema: public; Owner: mmuser
--

CREATE SEQUENCE public.misago_users_usernamechange_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misago_users_usernamechange_id_seq OWNER TO mmuser;

--
-- Name: misago_users_usernamechange_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mmuser
--

ALTER SEQUENCE public.misago_users_usernamechange_id_seq OWNED BY public.misago_users_usernamechange.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_genre ALTER COLUMN id SET DEFAULT nextval('public.gql_platform_genre_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_serialization ALTER COLUMN id SET DEFAULT nextval('public.gql_platform_serialization_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_serialization_genres ALTER COLUMN id SET DEFAULT nextval('public.gql_platform_serialization_genres_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_userstatus ALTER COLUMN id SET DEFAULT nextval('public.gql_platform_userstatus_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_acl_role ALTER COLUMN id SET DEFAULT nextval('public.misago_acl_role_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_category ALTER COLUMN id SET DEFAULT nextval('public.misago_categories_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_categoryrole ALTER COLUMN id SET DEFAULT nextval('public.misago_categories_categoryrole_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_rolecategoryacl ALTER COLUMN id SET DEFAULT nextval('public.misago_categories_rolecategoryacl_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_conf_setting ALTER COLUMN id SET DEFAULT nextval('public.misago_conf_setting_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_conf_settingsgroup ALTER COLUMN id SET DEFAULT nextval('public.misago_conf_settingsgroup_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_core_cacheversion ALTER COLUMN id SET DEFAULT nextval('public.misago_core_cacheversion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_readtracker_postread ALTER COLUMN id SET DEFAULT nextval('public.misago_readtracker_postread_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachment ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_attachment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_attachmenttype_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype_limit_downloads_to ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_attachmenttype_limit_downloads_to_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype_limit_uploads_to ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_attachmenttype_limit_uploads_to_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_poll ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_poll_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_pollvote ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_pollvote_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_post_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post_mentions ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_post_mentions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postedit ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_postedit_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postlike ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_postlike_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_subscription ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_subscription_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_thread ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_thread_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_threadparticipant ALTER COLUMN id SET DEFAULT nextval('public.misago_threads_threadparticipant_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_activityranking ALTER COLUMN id SET DEFAULT nextval('public.misago_users_activityranking_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_avatar ALTER COLUMN id SET DEFAULT nextval('public.misago_users_avatar_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_avatargallery ALTER COLUMN id SET DEFAULT nextval('public.misago_users_avatargallery_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_ban ALTER COLUMN id SET DEFAULT nextval('public.misago_users_ban_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_rank ALTER COLUMN id SET DEFAULT nextval('public.misago_users_rank_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_rank_roles ALTER COLUMN id SET DEFAULT nextval('public.misago_users_rank_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user ALTER COLUMN id SET DEFAULT nextval('public.misago_users_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_blocks ALTER COLUMN id SET DEFAULT nextval('public.misago_users_user_blocks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_follows ALTER COLUMN id SET DEFAULT nextval('public.misago_users_user_follows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.misago_users_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_roles ALTER COLUMN id SET DEFAULT nextval('public.misago_users_user_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.misago_users_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_usernamechange ALTER COLUMN id SET DEFAULT nextval('public.misago_users_usernamechange_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add user	1	add_user
2	Can change user	1	change_user
3	Can delete user	1	delete_user
4	Can add online	2	add_online
5	Can change online	2	change_online
6	Can delete online	2	delete_online
7	Can add username change	3	add_usernamechange
8	Can change username change	3	change_usernamechange
9	Can delete username change	3	delete_usernamechange
10	Can add rank	4	add_rank
11	Can change rank	4	change_rank
12	Can delete rank	4	delete_rank
13	Can add activity ranking	5	add_activityranking
14	Can change activity ranking	5	change_activityranking
15	Can delete activity ranking	5	delete_activityranking
16	Can add avatar	6	add_avatar
17	Can change avatar	6	change_avatar
18	Can delete avatar	6	delete_avatar
19	Can add avatar gallery	7	add_avatargallery
20	Can change avatar gallery	7	change_avatargallery
21	Can delete avatar gallery	7	delete_avatargallery
22	Can add ban	8	add_ban
23	Can change ban	8	change_ban
24	Can delete ban	8	delete_ban
25	Can add ban cache	9	add_bancache
26	Can change ban cache	9	change_bancache
27	Can delete ban cache	9	delete_bancache
28	Can add log entry	10	add_logentry
29	Can change log entry	10	change_logentry
30	Can delete log entry	10	delete_logentry
31	Can add permission	11	add_permission
32	Can change permission	11	change_permission
33	Can delete permission	11	delete_permission
34	Can add group	12	add_group
35	Can change group	12	change_group
36	Can delete group	12	delete_group
37	Can add content type	13	add_contenttype
38	Can change content type	13	change_contenttype
39	Can delete content type	13	delete_contenttype
40	Can add session	14	add_session
41	Can change session	14	change_session
42	Can delete session	14	delete_session
43	Can add role	15	add_role
44	Can change role	15	change_role
45	Can delete role	15	delete_role
46	Can add cache version	16	add_cacheversion
47	Can change cache version	16	change_cacheversion
48	Can delete cache version	16	delete_cacheversion
49	Can add setting	17	add_setting
50	Can change setting	17	change_setting
51	Can delete setting	17	delete_setting
52	Can add settings group	18	add_settingsgroup
53	Can change settings group	18	change_settingsgroup
54	Can delete settings group	18	delete_settingsgroup
55	Can add category	19	add_category
56	Can change category	19	change_category
57	Can delete category	19	delete_category
58	Can add category role	20	add_categoryrole
59	Can change category role	20	change_categoryrole
60	Can delete category role	20	delete_categoryrole
61	Can add role category acl	21	add_rolecategoryacl
62	Can change role category acl	21	change_rolecategoryacl
63	Can delete role category acl	21	delete_rolecategoryacl
64	Can add post	22	add_post
65	Can change post	22	change_post
66	Can delete post	22	delete_post
67	Can add thread	23	add_thread
68	Can change thread	23	change_thread
69	Can delete thread	23	delete_thread
70	Can add thread participant	24	add_threadparticipant
71	Can change thread participant	24	change_threadparticipant
72	Can delete thread participant	24	delete_threadparticipant
73	Can add subscription	25	add_subscription
74	Can change subscription	25	change_subscription
75	Can delete subscription	25	delete_subscription
76	Can add post edit	26	add_postedit
77	Can change post edit	26	change_postedit
78	Can delete post edit	26	delete_postedit
79	Can add attachment	27	add_attachment
80	Can change attachment	27	change_attachment
81	Can delete attachment	27	delete_attachment
82	Can add attachment type	28	add_attachmenttype
83	Can change attachment type	28	change_attachmenttype
84	Can delete attachment type	28	delete_attachmenttype
85	Can add poll	29	add_poll
86	Can change poll	29	change_poll
87	Can delete poll	29	delete_poll
88	Can add poll vote	30	add_pollvote
89	Can change poll vote	30	change_pollvote
90	Can delete poll vote	30	delete_pollvote
91	Can add post like	31	add_postlike
92	Can change post like	31	change_postlike
93	Can delete post like	31	delete_postlike
94	Can add post read	32	add_postread
95	Can change post read	32	change_postread
96	Can delete post read	32	delete_postread
97	Can add author	33	add_author
98	Can change author	33	change_author
99	Can delete author	33	delete_author
100	Can add genre	34	add_genre
101	Can change genre	34	change_genre
102	Can delete genre	34	delete_genre
103	Can add manga series	35	add_mangaseries
104	Can change manga series	35	change_mangaseries
105	Can delete manga series	35	delete_mangaseries
106	Can add user status	36	add_userstatus
107	Can change user status	36	change_userstatus
108	Can delete user status	36	delete_userstatus
109	Can add serialization	37	add_serialization
110	Can change serialization	37	change_serialization
111	Can delete serialization	37	delete_serialization
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 111, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-11-16 14:42:30.890409-08	1	UserStatus object	1	[{"added": {}}]	36	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	misago_users	user
2	misago_users	online
3	misago_users	usernamechange
4	misago_users	rank
5	misago_users	activityranking
6	misago_users	avatar
7	misago_users	avatargallery
8	misago_users	ban
9	misago_users	bancache
10	admin	logentry
11	auth	permission
12	auth	group
13	contenttypes	contenttype
14	sessions	session
15	misago_acl	role
16	misago_core	cacheversion
17	misago_conf	setting
18	misago_conf	settingsgroup
19	misago_categories	category
20	misago_categories	categoryrole
21	misago_categories	rolecategoryacl
22	misago_threads	post
23	misago_threads	thread
24	misago_threads	threadparticipant
25	misago_threads	subscription
26	misago_threads	postedit
27	misago_threads	attachment
28	misago_threads	attachmenttype
29	misago_threads	poll
30	misago_threads	pollvote
31	misago_threads	postlike
32	misago_readtracker	postread
33	gql_platform	author
34	gql_platform	genre
35	gql_platform	mangaseries
36	gql_platform	userstatus
37	gql_platform	serialization
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 37, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	misago_acl	0001_initial	2017-11-16 12:47:19.61944-08
2	contenttypes	0001_initial	2017-11-16 12:47:19.649914-08
3	auth	0001_initial	2017-11-16 12:47:19.789536-08
4	misago_users	0001_initial	2017-11-16 12:47:20.403178-08
5	admin	0001_initial	2017-11-16 12:47:20.47262-08
6	admin	0002_logentry_remove_auto_add	2017-11-16 12:47:20.501633-08
7	contenttypes	0002_remove_content_type_name	2017-11-16 12:47:20.55154-08
8	auth	0002_alter_permission_name_max_length	2017-11-16 12:47:20.564881-08
9	auth	0003_alter_user_email_max_length	2017-11-16 12:47:20.584743-08
10	auth	0004_alter_user_username_opts	2017-11-16 12:47:20.605274-08
11	auth	0005_alter_user_last_login_null	2017-11-16 12:47:20.676846-08
12	auth	0006_require_contenttypes_0002	2017-11-16 12:47:20.68157-08
13	auth	0007_alter_validators_add_error_messages	2017-11-16 12:47:20.700433-08
14	auth	0008_alter_user_username_max_length	2017-11-16 12:47:20.72089-08
15	gql_platform	0001_initial	2017-11-16 12:47:20.803269-08
16	misago_core	0001_initial	2017-11-16 12:47:20.819555-08
17	misago_acl	0002_acl_version_tracker	2017-11-16 12:47:20.856999-08
18	misago_acl	0003_default_roles	2017-11-16 12:47:20.905119-08
19	misago_categories	0001_initial	2017-11-16 12:47:21.028111-08
20	misago_threads	0001_initial	2017-11-16 12:47:22.550873-08
21	misago_categories	0002_default_categories	2017-11-16 12:47:22.630093-08
22	misago_categories	0003_categories_roles	2017-11-16 12:47:22.748764-08
23	misago_categories	0004_category_last_thread	2017-11-16 12:47:22.903843-08
24	misago_categories	0005_auto_20170303_2027	2017-11-16 12:47:23.155975-08
25	misago_categories	0006_moderation_queue_roles	2017-11-16 12:47:23.222276-08
26	misago_conf	0001_initial	2017-11-16 12:47:23.286908-08
27	misago_core	0002_basic_settings	2017-11-16 12:47:23.372931-08
28	misago_legal	0001_initial	2017-11-16 12:47:23.451603-08
29	misago_threads	0002_threads_settings	2017-11-16 12:47:23.522002-08
30	misago_threads	0003_attachment_types	2017-11-16 12:47:23.598726-08
31	misago_threads	0004_update_settings	2017-11-16 12:47:23.6763-08
32	misago_threads	0005_index_search_document	2017-11-16 12:59:13.380165-08
33	misago_threads	0006_redo_partial_indexes	2017-11-16 12:59:14.004395-08
34	misago_readtracker	0001_initial	2017-11-16 12:59:14.301086-08
35	misago_readtracker	0002_postread	2017-11-16 12:59:14.406201-08
36	misago_readtracker	0003_migrate_reads_to_posts	2017-11-16 12:59:14.501279-08
37	misago_readtracker	0004_auto_20171015_2010	2017-11-16 12:59:14.971651-08
38	misago_threads	0007_auto_20171008_0131	2017-11-16 12:59:15.030679-08
39	misago_users	0002_users_settings	2017-11-16 12:59:15.117784-08
40	misago_users	0003_bans_version_tracker	2017-11-16 12:59:15.192395-08
41	misago_users	0004_default_ranks	2017-11-16 12:59:15.31371-08
42	misago_users	0005_dj_19_update	2017-11-16 12:59:15.49896-08
43	misago_users	0006_update_settings	2017-11-16 12:59:15.576894-08
44	misago_users	0007_auto_20170219_1639	2017-11-16 12:59:15.816729-08
45	misago_users	0008_ban_registration_only	2017-11-16 12:59:15.869316-08
46	misago_users	0009_redo_partial_indexes	2017-11-16 12:59:15.982649-08
47	misago_users	0010_user_profile_fields	2017-11-16 12:59:16.292339-08
48	misago_users	0011_auto_20171116_2034	2017-11-16 12:59:16.335373-08
49	sessions	0001_initial	2017-11-16 12:59:16.36268-08
50	gql_platform	0002_auto_20180227_2053	2018-02-27 12:56:11.865861-08
51	gql_platform	0003_auto_20180303_0157	2018-03-02 17:57:57.392785-08
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 51, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
6pmjopjmgktdzw1tndx1hjpfaqacbucc	YWU1ZmQ5MzEzMmZjMmM4NTJhYjI2MWI4MDIxMWRmZTUzMmQyNDYzMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoibWlzYWdvLnVzZXJzLmF1dGhiYWNrZW5kcy5NaXNhZ29CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWIyYjI3ODNiNDIwZWQ1OThmNDVmNTE1YTk1Y2YzZDdjZTQwMzljZCIsIm1pc2Fnb19hZG1pbl9zZXNzaW9uX3Rva2VuIjoiMTliMTc5ZWVmYjllMDZlMDc4NmZmZjEzOWNhM2ZjMjgiLCJtaXNhZ29fYWRtaW5fc2Vzc2lvbl91cGRhdGVkIjoxNTEwOTA2MDAwfQ==	2017-12-01 00:06:40.181948-08
ti3weyn8rhivrqm1qgch5z2ryy34rjbj	ZTMwOGFlNDM0NDUxOGYzMGY0MjEyNWE2OTNkZTVlMDg2YzY1ZjdhODp7Im1pc2Fnb19pcF9jaGVjayI6eyJ2ZXJzaW9uIjowLCJpcCI6IjEyNy4wLjAuMSIsImlzX2Jhbm5lZCI6ZmFsc2V9LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6Im1pc2Fnby51c2Vycy5hdXRoYmFja2VuZHMuTWlzYWdvQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFiMmIyNzgzYjQyMGVkNTk4ZjQ1ZjUxNWE5NWNmM2Q3Y2U0MDM5Y2QifQ==	2017-12-01 12:42:43.347779-08
\.


--
-- Data for Name: gql_platform_genre; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.gql_platform_genre (id, name) FROM stdin;
20	Action
21	Adventure
22	Comedy
23	Drama
24	Fantasy
25	Historical
26	Horror
27	Josei
28	Mystery
29	Psychological
30	Romance
31	Sci-fi
32	Seinen
33	Shoujo
34	Shounen
35	Slice of Life
36	Sports
37	Supernatural
38	Tragedy
\.


--
-- Name: gql_platform_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.gql_platform_genre_id_seq', 38, true);


--
-- Data for Name: gql_platform_serialization; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.gql_platform_serialization (id, title) FROM stdin;
\.


--
-- Data for Name: gql_platform_serialization_genres; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.gql_platform_serialization_genres (id, serialization_id, genre_id) FROM stdin;
\.


--
-- Name: gql_platform_serialization_genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.gql_platform_serialization_genres_id_seq', 1, false);


--
-- Name: gql_platform_serialization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.gql_platform_serialization_id_seq', 1, false);


--
-- Data for Name: gql_platform_userstatus; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.gql_platform_userstatus (id, text, creation_date, user_id) FROM stdin;
1	First one to start with.	2017-11-16 14:42:30.872188-08	1
2	Test that this still works.	2017-11-16 16:21:04.584728-08	1
3	Test.	2018-02-27 16:23:34.99718-08	1
4	Test again.	2018-02-27 17:25:47.492736-08	1
5	And again.	2018-02-27 18:00:14.595833-08	1
6	And again.	2018-02-27 18:03:21.864551-08	1
\.


--
-- Name: gql_platform_userstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.gql_platform_userstatus_id_seq', 6, true);


--
-- Data for Name: misago_acl_role; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_acl_role (id, name, special_role, permissions) FROM stdin;
1	Member	authenticated	{"misago.search.permissions": {"can_search": 1}, "misago.threads.permissions.polls": {"can_edit_polls": 1, "can_start_polls": 1}, "misago.users.permissions.account": {"can_have_signature": 0, "name_changes_expire": 180, "name_changes_allowed": 2, "allow_signature_links": 0, "allow_signature_images": 0}, "misago.users.permissions.profiles": {"can_be_blocked": 1, "can_follow_users": 1, "can_search_users": 1, "can_see_users_ips": 0, "can_see_hidden_users": 0, "can_see_users_emails": 0, "can_browse_users_list": 1, "can_see_users_name_history": 0}, "misago.threads.permissions.attachments": {"max_attachment_size": 4096, "can_download_other_users_attachments": true}}
2	Guest	anonymous	{"misago.search.permissions": {"can_search": 1}, "misago.users.permissions.account": {"can_have_signature": 0, "name_changes_expire": 0, "name_changes_allowed": 0, "allow_signature_links": 0, "allow_signature_images": 0}, "misago.users.permissions.profiles": {"can_search_users": 1, "can_see_users_ips": 0, "can_see_hidden_users": 0, "can_see_users_emails": 0, "can_browse_users_list": 1, "can_see_users_name_history": 0}, "misago.threads.permissions.attachments": {"can_download_other_users_attachments": true}}
3	Moderator	\N	{"misago.users.permissions.delete": {"can_delete_users_newer_than": 0, "can_delete_users_with_less_posts_than": 0}, "misago.threads.permissions.polls": {"can_edit_polls": 2, "can_start_polls": 2, "can_delete_polls": 2, "can_always_see_poll_voters": 1}, "misago.users.permissions.account": {"can_have_signature": 1, "name_changes_expire": 14, "name_changes_allowed": 5, "allow_signature_links": 1, "allow_signature_images": 0}, "misago.users.permissions.profiles": {"can_be_blocked": 0, "can_search_users": 1, "can_see_users_ips": 1, "can_see_ban_details": 1, "can_see_hidden_users": 1, "can_see_users_emails": 1, "can_browse_users_list": 1, "can_see_users_name_history": 1}, "misago.threads.permissions.threads": {"can_omit_flood_protection": true, "can_see_reported_content_lists": true, "can_see_unapproved_content_lists": true}, "misago.users.permissions.moderation": {"can_warn_users": 1, "can_moderate_avatars": 1, "can_moderate_signatures": 1, "can_moderate_profile_details": 1}, "misago.threads.permissions.attachments": {"max_attachment_size": 8192, "can_delete_other_users_attachments": true, "can_download_other_users_attachments": true}}
4	Renaming users	\N	{"misago.users.permissions.moderation": {"can_rename_users": 1}}
5	Banning users	\N	{"misago.users.permissions.profiles": {"can_see_ban_details": 1}, "misago.users.permissions.moderation": {"can_ban_users": 1, "can_lift_bans": 1, "max_ban_length": 14, "max_lifted_ban_length": 14}}
6	Deleting users	\N	{"misago.users.permissions.delete": {"can_delete_users_newer_than": 3, "can_delete_users_with_less_posts_than": 7}}
7	Can't be blocked	\N	{"misago.users.permissions.profiles": {"can_be_blocked": 0}}
8	Private threads	\N	{"misago.threads.permissions.privatethreads": {"can_use_private_threads": 1, "can_start_private_threads": 1, "can_report_private_threads": 1, "can_moderate_private_threads": 0, "max_private_thread_participants": 3, "can_add_everyone_to_private_threads": 0}}
9	Private threads moderator	\N	{"misago.threads.permissions.privatethreads": {"can_use_private_threads": 1, "can_start_private_threads": 1, "can_report_private_threads": 1, "can_moderate_private_threads": 1, "max_private_thread_participants": 15, "can_add_everyone_to_private_threads": 1}}
\.


--
-- Name: misago_acl_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_acl_role_id_seq', 9, true);


--
-- Data for Name: misago_categories_category; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_categories_category (id, special_role, name, slug, description, is_closed, threads, posts, last_thread_title, last_thread_slug, last_poster_name, last_poster_slug, last_post_on, prune_started_after, prune_replied_after, css_class, lft, rght, tree_id, level, archive_pruned_in_id, last_poster_id, parent_id, last_thread_id, require_edits_approval, require_replies_approval, require_threads_approval) FROM stdin;
1	private_threads	Private	private	\N	f	0	0	\N	\N	\N	\N	\N	0	0	\N	1	2	0	0	\N	\N	\N	\N	f	f	f
2	root_category	Root	root	\N	f	0	0	\N	\N	\N	\N	\N	0	0	\N	3	6	1	0	\N	\N	\N	\N	f	f	f
3	\N	Test Category	test-category		f	0	0	\N	\N	\N	\N	\N	0	0		4	5	1	1	\N	\N	2	\N	f	f	f
\.


--
-- Name: misago_categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_categories_category_id_seq', 3, true);


--
-- Data for Name: misago_categories_categoryrole; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_categories_categoryrole (id, name, special_role, permissions) FROM stdin;
1	See only	\N	{"misago.categories.permissions": {"can_see": 1, "can_browse": 0}}
2	Read only	\N	{"misago.categories.permissions": {"can_see": 1, "can_browse": 1}, "misago.threads.permissions.threads": {"can_like_posts": 1, "can_see_all_threads": 1, "can_see_posts_likes": 1, "can_download_other_users_attachments": 1}}
3	Reply to threads	\N	{"misago.categories.permissions": {"can_see": 1, "can_browse": 1}, "misago.threads.permissions.threads": {"can_edit_posts": 1, "can_like_posts": 1, "can_reply_threads": 1, "can_see_all_threads": 1, "can_see_posts_likes": 2, "max_attachment_size": 500, "can_download_other_users_attachments": 1}}
4	Start and reply threads	\N	{"misago.categories.permissions": {"can_see": 1, "can_browse": 1}, "misago.threads.permissions.threads": {"can_edit_posts": 1, "can_like_posts": 1, "can_edit_threads": 1, "can_reply_threads": 1, "can_start_threads": 1, "can_see_all_threads": 1, "can_see_posts_likes": 2, "max_attachment_size": 500, "can_download_other_users_attachments": 1}}
5	Start and reply threads, make polls	\N	{"misago.categories.permissions": {"can_see": 1, "can_browse": 1}, "misago.threads.permissions.threads": {"can_edit_posts": 1, "can_like_posts": 1, "can_edit_threads": 1, "can_reply_threads": 1, "can_start_threads": 1, "can_see_all_threads": 1, "can_see_posts_likes": 2, "max_attachment_size": 500, "can_download_other_users_attachments": 1}}
6	Moderator	\N	{"misago.categories.permissions": {"can_see": 1, "can_browse": 1}, "misago.threads.permissions.threads": {"can_edit_posts": 2, "can_hide_posts": 2, "can_like_posts": 1, "can_move_posts": 1, "post_edit_time": 0, "can_hide_events": 2, "can_merge_posts": 1, "can_pin_threads": 2, "can_see_reports": 1, "can_edit_threads": 2, "can_hide_threads": 2, "can_move_threads": 1, "thread_edit_time": 0, "can_close_threads": 1, "can_merge_threads": 1, "can_protect_posts": 1, "can_reply_threads": 1, "can_start_threads": 1, "can_hide_own_posts": 2, "can_report_content": 1, "can_approve_content": 1, "can_see_all_threads": 1, "can_see_posts_likes": 2, "max_attachment_size": 2500, "can_announce_threads": 1, "can_hide_own_threads": 2, "can_delete_other_users_attachments": 1, "can_download_other_users_attachments": 1}}
7	In moderation queue	\N	{"misago.threads.permissions.threads": {"require_replies_approval": 1, "require_threads_approval": 1}}
\.


--
-- Name: misago_categories_categoryrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_categories_categoryrole_id_seq', 7, true);


--
-- Data for Name: misago_categories_rolecategoryacl; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_categories_rolecategoryacl (id, category_id, category_role_id, role_id) FROM stdin;
1	3	6	3
2	3	4	1
3	3	2	2
\.


--
-- Name: misago_categories_rolecategoryacl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_categories_rolecategoryacl_id_seq', 3, true);


--
-- Data for Name: misago_conf_setting; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_conf_setting (id, setting, name, description, legend, "order", dry_value, default_value, python_type, is_public, is_lazy, form_field, field_extra, group_id) FROM stdin;
1	forum_name	Forum name	\N	General	0	Misago	\N	string	t	f	text	{"max_length": 255, "min_length": 2}	1
2	forum_index_title	Index title	You may set custon title on forum index by typing it here.	Forum index	1	\N	\N	string	t	f	text	{"max_length": 255}	1
3	forum_index_meta_description	Meta Description	Short description of your forum for internet crawlers.	\N	2	\N	\N	string	f	f	text	{"max_length": 255}	1
4	forum_branding_display	Display branding	Switch branding in forum's navbar.	Branding	3	True	\N	bool	t	f	yesno	{}	1
5	forum_branding_text	Branding text	Optional text displayed besides brand image in navbar.	\N	4	Misago	\N	string	t	f	text	{"max_length": 255}	1
6	email_footer	E-mails footer	Optional short message included at the end of e-mails sent by forum.	Forum e-mails	5	\N	\N	string	f	f	text	{"max_length": 255}	1
7	terms_of_service_title	Terms title	Leave this field empty to use default title.	Terms of Service	0		\N	string	t	f	text	{"required": false, "max_length": 255}	2
8	terms_of_service_link	Terms link	If terms of service are located on other page, enter there its link.	\N	1		\N	string	t	f	text	{"required": false, "max_length": 255}	2
9	terms_of_service	Terms contents	Your forums can have custom terms of service page. To create it, write or paste here its contents. Full Misago markup is available for formatting.	\N	2		\N	string	t	t	textarea	{"rows": 8, "required": false, "max_length": 128000}	2
10	privacy_policy_title	Policy title	Leave this field empty to use default title.	Privacy policy	3		\N	string	t	f	text	{"required": false, "max_length": 255}	2
11	privacy_policy_link	Policy link	If privacy policy is located on other page, enter there its link.	\N	4		\N	string	t	f	text	{"required": false, "max_length": 255}	2
12	privacy_policy	Policy contents	Your forums can have custom privacy policy page. To create it, write or paste here its contents. Full Misago markup is available for formatting.	\N	5		\N	string	t	t	textarea	{"rows": 8, "required": false, "max_length": 128000}	2
13	forum_footnote	Footnote	Short message displayed in forum footer.	Forum footer	6	\N	\N	string	t	f	text	{"max_length": 300}	2
18	thread_title_length_min	Minimum length	Minimum allowed thread title length.	Thread titles	0	5	5	int	t	f	text	{"max_value": 255, "min_value": 2}	3
19	thread_title_length_max	Maximum length	Maximum allowed thread length.	\N	1	90	90	int	t	f	text	{"max_value": 255, "min_value": 2}	3
20	post_length_min	Minimum length	Minimum allowed user post length.	Posts	2	5	5	int	t	f	text	{"min_value": 1}	3
21	post_length_max	Maximum length	Maximum allowed user post length. Enter zero to disable. Longer posts are more costful to parse and index.	\N	3	60000	60000	int	t	f	text	{"min_value": 0}	3
33	captcha_type	Select CAPTCHA type	\N	CAPTCHA type	0	no	\N	string	t	f	select	{"choices": [["no", "No CAPTCHA"], ["re", "reCaptcha"], ["qa", "Question and answer"]]}	5
34	recaptcha_site_key	Site key	\N	reCAPTCHA	1		\N	string	t	f	text	{"required": false, "max_length": 100}	5
35	recaptcha_secret_key	Secret key	\N	\N	2		\N	string	f	f	text	{"required": false, "max_length": 100}	5
36	qa_question	Test question	\N	Question and answer	3		\N	string	f	f	text	{"required": false, "max_length": 250}	5
37	qa_help_text	Question help text	\N	\N	4		\N	string	f	f	text	{"required": false, "max_length": 250}	5
38	qa_answers	Valid answers	Enter each answer in new line. Answers are case-insensitive.	\N	5		\N	string	f	f	textarea	{"rows": 4, "required": false, "max_length": 250}	5
39	account_activation	New accounts activation	\N	New accounts	0	none	\N	string	t	f	select	{"choices": [["none", "No activation required"], ["user", "Activation token sent to User"], ["admin", "Activation by administrator"], ["closed", "Don't allow new registrations"]]}	4
40	username_length_min	Minimum length	Minimum allowed username length.	User names	1	3	3	int	f	f	text	{"max_value": 20, "min_value": 2}	4
41	username_length_max	Maximum length	Maximum allowed username length.	\N	2	14	14	int	f	f	text	{"max_value": 20, "min_value": 2}	4
42	allow_custom_avatars	Allow custom avatars	Turning this option off will forbid forum users from using avatars from outside forums. Good for forums adressed at young users.	Avatars	3	True	\N	bool	f	f	yesno	{}	4
43	default_avatar	Default avatar	\N	\N	4	gravatar	\N	string	f	f	select	{"choices": [["dynamic", "Individual"], ["gravatar", "Gravatar"], ["gallery", "Random avatar from gallery"]]}	4
44	default_gravatar_fallback	Fallback for default gravatar	Select which avatar to use when user has no gravatar associated with his e-mail address.	\N	5	dynamic	\N	string	f	f	select	{"choices": [["dynamic", "Individual"], ["gallery", "Random avatar from gallery"]]}	4
45	avatar_upload_limit	Maximum size of uploaded avatar	Enter maximum allowed file size (in KB) for avatar uploads.	\N	6	1536	1536	int	t	f	text	{"min_value": 0}	4
46	signature_length_max	Maximum length	Maximum allowed signature length.	Signatures	7	256	256	int	t	f	text	{"max_value": 5000, "min_value": 10}	4
47	subscribe_start	Started threads	\N	Default subscriptions settings	8	watch_email	\N	string	f	f	select	{"choices": [["no", "Don't watch"], ["watch", "Put on watched threads list"], ["watch_email", "Put on watched threads list and e-mail user when somebody replies"]]}	4
48	subscribe_reply	Replied threads	\N	\N	9	watch_email	\N	string	f	f	select	{"choices": [["no", "Don't watch"], ["watch", "Put on watched threads list"], ["watch_email", "Put on watched threads list and e-mail user when somebody replies"]]}	4
\.


--
-- Name: misago_conf_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_conf_setting_id_seq', 48, true);


--
-- Data for Name: misago_conf_settingsgroup; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_conf_settingsgroup (id, key, name, description) FROM stdin;
1	basic	Basic forum settings	Those settings control most basic properties of your forum like its name or description.
2	legal	Legal information	Those settings allow you to set forum terms of service and privacy policy.
3	threads	Threads	Those settings control threads and posts.
5	captcha	CAPTCHA	Those settings allow you to combat automatic registrations on your forum.
4	users	Users	Those settings control user accounts default behaviour and features availability.
\.


--
-- Name: misago_conf_settingsgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_conf_settingsgroup_id_seq', 5, true);


--
-- Data for Name: misago_core_cacheversion; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_core_cacheversion (id, cache, version) FROM stdin;
2	misago_bans	0
1	misago_acl	1
\.


--
-- Name: misago_core_cacheversion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_core_cacheversion_id_seq', 2, true);


--
-- Data for Name: misago_readtracker_postread; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_readtracker_postread (id, last_read_on, category_id, post_id, thread_id, user_id) FROM stdin;
\.


--
-- Name: misago_readtracker_postread_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_readtracker_postread_id_seq', 1, false);


--
-- Data for Name: misago_threads_attachment; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_attachment (id, secret, uploaded_on, uploader_name, uploader_slug, uploader_ip, filename, size, thumbnail, image, file, post_id, filetype_id, uploader_id) FROM stdin;
\.


--
-- Name: misago_threads_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_attachment_id_seq', 1, false);


--
-- Data for Name: misago_threads_attachmenttype; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_attachmenttype (id, name, extensions, mimetypes, size_limit, status) FROM stdin;
1	GIF	gif	image/gif	5120	0
2	JPG	jpg,jpeg	image/jpeg	3072	0
3	PNG	png	image/png	3072	0
4	PDF	pdf	application/pdf,application/x-pdf,application/x-bzpdf,application/x-gzpdf	4096	0
5	Text	txt	text/plain	4096	0
6	Markdown	md	text/markdown	4096	0
7	reStructuredText	rst	text/x-rst	4096	0
8	7Z	7z	application/x-7z-compressed	4096	0
9	RAR	rar	application/vnd.rar	4096	0
10	TAR	tar	application/x-tar	4096	0
11	GZ	gz	application/gzip	4096	0
12	ZIP	zip,zipx	application/zip	4096	0
\.


--
-- Name: misago_threads_attachmenttype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_attachmenttype_id_seq', 12, true);


--
-- Data for Name: misago_threads_attachmenttype_limit_downloads_to; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_attachmenttype_limit_downloads_to (id, attachmenttype_id, role_id) FROM stdin;
\.


--
-- Name: misago_threads_attachmenttype_limit_downloads_to_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_attachmenttype_limit_downloads_to_id_seq', 1, false);


--
-- Data for Name: misago_threads_attachmenttype_limit_uploads_to; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_attachmenttype_limit_uploads_to (id, attachmenttype_id, role_id) FROM stdin;
\.


--
-- Name: misago_threads_attachmenttype_limit_uploads_to_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_attachmenttype_limit_uploads_to_id_seq', 1, false);


--
-- Data for Name: misago_threads_poll; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_poll (id, poster_name, poster_slug, poster_ip, posted_on, length, question, choices, allowed_choices, allow_revotes, votes, is_public, category_id, poster_id, thread_id) FROM stdin;
\.


--
-- Name: misago_threads_poll_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_poll_id_seq', 1, false);


--
-- Data for Name: misago_threads_pollvote; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_pollvote (id, voter_name, voter_slug, voter_ip, voted_on, choice_hash, category_id, poll_id, thread_id, voter_id) FROM stdin;
\.


--
-- Name: misago_threads_pollvote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_pollvote_id_seq', 1, false);


--
-- Data for Name: misago_threads_post; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_post (id, poster_name, poster_ip, original, parsed, checksum, attachments_cache, posted_on, updated_on, edits, last_editor_name, last_editor_slug, hidden_by_id, hidden_by_name, hidden_by_slug, hidden_on, has_reports, has_open_reports, is_unapproved, is_hidden, is_protected, category_id, last_editor_id, poster_id, is_event, event_type, event_context, likes, last_likes, search_document, search_vector, thread_id) FROM stdin;
\.


--
-- Name: misago_threads_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_post_id_seq', 1, false);


--
-- Data for Name: misago_threads_post_mentions; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_post_mentions (id, post_id, user_id) FROM stdin;
\.


--
-- Name: misago_threads_post_mentions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_post_mentions_id_seq', 1, false);


--
-- Data for Name: misago_threads_postedit; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_postedit (id, edited_on, editor_name, editor_slug, editor_ip, edited_from, edited_to, category_id, editor_id, post_id, thread_id) FROM stdin;
\.


--
-- Name: misago_threads_postedit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_postedit_id_seq', 1, false);


--
-- Data for Name: misago_threads_postlike; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_postlike (id, liker_name, liker_slug, liker_ip, liked_on, category_id, post_id, thread_id, liker_id) FROM stdin;
\.


--
-- Name: misago_threads_postlike_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_postlike_id_seq', 1, false);


--
-- Data for Name: misago_threads_subscription; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_subscription (id, last_read_on, send_email, category_id, thread_id, user_id) FROM stdin;
\.


--
-- Name: misago_threads_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_subscription_id_seq', 1, false);


--
-- Data for Name: misago_threads_thread; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_thread (id, title, slug, replies, has_events, has_poll, has_reported_posts, has_open_reports, has_unapproved_posts, has_hidden_posts, started_on, starter_name, starter_slug, last_post_is_event, last_post_on, last_poster_name, last_poster_slug, weight, is_unapproved, is_hidden, is_closed, first_post_id, category_id, last_post_id, last_poster_id, starter_id) FROM stdin;
\.


--
-- Name: misago_threads_thread_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_thread_id_seq', 1, false);


--
-- Data for Name: misago_threads_threadparticipant; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_threads_threadparticipant (id, thread_id, user_id, is_owner) FROM stdin;
\.


--
-- Name: misago_threads_threadparticipant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_threads_threadparticipant_id_seq', 1, false);


--
-- Data for Name: misago_users_activityranking; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_activityranking (id, user_id, score) FROM stdin;
\.


--
-- Name: misago_users_activityranking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_activityranking_id_seq', 1, false);


--
-- Data for Name: misago_users_avatar; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_avatar (id, user_id, size, image) FROM stdin;
1	1	400	avatars/ce/f1/jCEvgvClH4j1q4WtzVKfYukTSt31OHIz/1R1fqD2C22O37iWdROu2aePgZmfceCRd.png
2	1	200	avatars/f5/b4/zHEuC0r9yjE81dX8lxKYzbUm0VJOCQJN/Ci0SBQUVtS1Cu7Z7Fxa6dtJdH8AoIVdF.png
3	1	150	avatars/e6/71/ioR3ksQYpTKOREuhYmATgleSymRjUoNB/SWBi0SXOgOKJo94BUwO2zIMAdWFE4tSe.png
4	1	100	avatars/e8/a5/sCsV4d0XxuAGPv8jWj8YngG6EYZ194ZM/vFMvNFIFqAYDO0CME51fteWMKmt9Y4iS.png
5	1	64	avatars/e6/92/MqRYbS3fvDX0UmoKUDrMo9lBZ9SzbDRy/9Sm2mfRL2MXZJSi9VIaCvXtp3Wk0Qwai.png
6	1	50	avatars/be/d8/LlmQRHET1HirpkSJSIzpLCLYIXhcmePR/yN4H5bPZahcubwZOQyUHRi8Q4C8S49Do.png
7	1	30	avatars/75/77/O4RxexHnd2mVEqwKsyUd1SVez3rQmZ7E/BoXasnXEiFflqBtQO05rlvpV5NnGknEw.png
\.


--
-- Name: misago_users_avatar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_avatar_id_seq', 7, true);


--
-- Data for Name: misago_users_avatargallery; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_avatargallery (id, gallery, image) FROM stdin;
\.


--
-- Name: misago_users_avatargallery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_avatargallery_id_seq', 1, false);


--
-- Data for Name: misago_users_ban; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_ban (id, check_type, banned_value, user_message, staff_message, expires_on, is_checked, registration_only) FROM stdin;
\.


--
-- Name: misago_users_ban_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_ban_id_seq', 1, false);


--
-- Data for Name: misago_users_bancache; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_bancache (user_message, staff_message, bans_version, expires_on, ban_id, user_id) FROM stdin;
\.


--
-- Data for Name: misago_users_online; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_online (current_ip, last_click, user_id) FROM stdin;
127.0.0.1	2017-11-30 13:38:55.661576-08	1
\.


--
-- Data for Name: misago_users_rank; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_rank (id, name, slug, description, title, css_class, is_default, is_tab, "order") FROM stdin;
1	Forum team	forum-team	\N	Team	primary	f	t	0
2	Members	members	\N	\N	\N	t	f	1
\.


--
-- Name: misago_users_rank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_rank_id_seq', 2, true);


--
-- Data for Name: misago_users_rank_roles; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_rank_roles (id, rank_id, role_id) FROM stdin;
1	1	3
2	1	8
3	1	9
4	1	6
5	2	8
\.


--
-- Name: misago_users_rank_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_rank_roles_id_seq', 5, true);


--
-- Data for Name: misago_users_user; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_user (id, password, last_login, username, slug, email, email_hash, joined_on, joined_from_ip, last_ip, is_hiding_presence, title, requires_activation, is_staff, is_superuser, acl_key, is_active, is_active_staff_message, avatar_tmp, avatar_src, avatar_crop, avatars, is_avatar_locked, avatar_lock_user_message, avatar_lock_staff_message, signature, signature_parsed, signature_checksum, is_signature_locked, signature_lock_user_message, signature_lock_staff_message, following, followers, limits_private_thread_invites_to, unread_private_threads, sync_unread_private_threads, subscribe_to_started_threads, subscribe_to_replied_threads, threads, posts, last_posted_on, rank_id, profile_fields) FROM stdin;
1	pbkdf2_sha256$36000$DLnAA6u68Fen$gqu+m7TQrYSSe0EknpPgX0yC9uJS8sNIuxZw6po4yDM=	2017-11-17 12:42:43.308029-08	admin	admin	ronachong@gmail.com	48b53449c27a6c48160ffc0c077e3fc6	2017-11-16 14:25:25.895836-08	127.0.0.1	127.0.0.1	f	\N	0	t	t	af9abc910f5b	t	\N			\N	[{"url": "/media/avatars/ce/f1/jCEvgvClH4j1q4WtzVKfYukTSt31OHIz/1R1fqD2C22O37iWdROu2aePgZmfceCRd.png", "size": 400}, {"url": "/media/avatars/f5/b4/zHEuC0r9yjE81dX8lxKYzbUm0VJOCQJN/Ci0SBQUVtS1Cu7Z7Fxa6dtJdH8AoIVdF.png", "size": 200}, {"url": "/media/avatars/e6/71/ioR3ksQYpTKOREuhYmATgleSymRjUoNB/SWBi0SXOgOKJo94BUwO2zIMAdWFE4tSe.png", "size": 150}, {"url": "/media/avatars/e8/a5/sCsV4d0XxuAGPv8jWj8YngG6EYZ194ZM/vFMvNFIFqAYDO0CME51fteWMKmt9Y4iS.png", "size": 100}, {"url": "/media/avatars/e6/92/MqRYbS3fvDX0UmoKUDrMo9lBZ9SzbDRy/9Sm2mfRL2MXZJSi9VIaCvXtp3Wk0Qwai.png", "size": 64}, {"url": "/media/avatars/be/d8/LlmQRHET1HirpkSJSIzpLCLYIXhcmePR/yN4H5bPZahcubwZOQyUHRi8Q4C8S49Do.png", "size": 50}, {"url": "/media/avatars/75/77/O4RxexHnd2mVEqwKsyUd1SVez3rQmZ7E/BoXasnXEiFflqBtQO05rlvpV5NnGknEw.png", "size": 30}]	f	\N	\N	\N	\N	\N	f	\N	\N	0	0	0	0	f	2	2	0	0	\N	1	
\.


--
-- Data for Name: misago_users_user_blocks; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_user_blocks (id, from_user_id, to_user_id) FROM stdin;
\.


--
-- Name: misago_users_user_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_user_blocks_id_seq', 1, false);


--
-- Data for Name: misago_users_user_follows; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_user_follows (id, from_user_id, to_user_id) FROM stdin;
\.


--
-- Name: misago_users_user_follows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_user_follows_id_seq', 1, false);


--
-- Data for Name: misago_users_user_groups; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: misago_users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_user_groups_id_seq', 1, false);


--
-- Name: misago_users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_user_id_seq', 1, true);


--
-- Data for Name: misago_users_user_roles; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_user_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Name: misago_users_user_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_user_roles_id_seq', 1, true);


--
-- Data for Name: misago_users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: misago_users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: misago_users_usernamechange; Type: TABLE DATA; Schema: public; Owner: mmuser
--

COPY public.misago_users_usernamechange (id, changed_by_username, changed_on, new_username, old_username, changed_by_id, user_id) FROM stdin;
\.


--
-- Name: misago_users_usernamechange_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mmuser
--

SELECT pg_catalog.setval('public.misago_users_usernamechange_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: gql_platform_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_genre
    ADD CONSTRAINT gql_platform_genre_pkey PRIMARY KEY (id);


--
-- Name: gql_platform_serializati_serialization_id_genre_i_137d24b0_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_serialization_genres
    ADD CONSTRAINT gql_platform_serializati_serialization_id_genre_i_137d24b0_uniq UNIQUE (serialization_id, genre_id);


--
-- Name: gql_platform_serialization_genres_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_serialization_genres
    ADD CONSTRAINT gql_platform_serialization_genres_pkey PRIMARY KEY (id);


--
-- Name: gql_platform_serialization_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_serialization
    ADD CONSTRAINT gql_platform_serialization_pkey PRIMARY KEY (id);


--
-- Name: gql_platform_userstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_userstatus
    ADD CONSTRAINT gql_platform_userstatus_pkey PRIMARY KEY (id);


--
-- Name: misago_acl_role_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_acl_role
    ADD CONSTRAINT misago_acl_role_pkey PRIMARY KEY (id);


--
-- Name: misago_categories_category_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_category
    ADD CONSTRAINT misago_categories_category_pkey PRIMARY KEY (id);


--
-- Name: misago_categories_categoryrole_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_categoryrole
    ADD CONSTRAINT misago_categories_categoryrole_pkey PRIMARY KEY (id);


--
-- Name: misago_categories_rolecategoryacl_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_rolecategoryacl
    ADD CONSTRAINT misago_categories_rolecategoryacl_pkey PRIMARY KEY (id);


--
-- Name: misago_conf_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_conf_setting
    ADD CONSTRAINT misago_conf_setting_pkey PRIMARY KEY (id);


--
-- Name: misago_conf_setting_setting_key; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_conf_setting
    ADD CONSTRAINT misago_conf_setting_setting_key UNIQUE (setting);


--
-- Name: misago_conf_settingsgroup_key_key; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_conf_settingsgroup
    ADD CONSTRAINT misago_conf_settingsgroup_key_key UNIQUE (key);


--
-- Name: misago_conf_settingsgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_conf_settingsgroup
    ADD CONSTRAINT misago_conf_settingsgroup_pkey PRIMARY KEY (id);


--
-- Name: misago_core_cacheversion_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_core_cacheversion
    ADD CONSTRAINT misago_core_cacheversion_pkey PRIMARY KEY (id);


--
-- Name: misago_readtracker_postread_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_readtracker_postread
    ADD CONSTRAINT misago_readtracker_postread_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_attachmen_attachmenttype_id_role_i_b9d45256_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype_limit_uploads_to
    ADD CONSTRAINT misago_threads_attachmen_attachmenttype_id_role_i_b9d45256_uniq UNIQUE (attachmenttype_id, role_id);


--
-- Name: misago_threads_attachmen_attachmenttype_id_role_i_d18213ae_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype_limit_downloads_to
    ADD CONSTRAINT misago_threads_attachmen_attachmenttype_id_role_i_d18213ae_uniq UNIQUE (attachmenttype_id, role_id);


--
-- Name: misago_threads_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachment
    ADD CONSTRAINT misago_threads_attachment_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_attachmenttype_limit_downloads_to_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype_limit_downloads_to
    ADD CONSTRAINT misago_threads_attachmenttype_limit_downloads_to_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_attachmenttype_limit_uploads_to_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype_limit_uploads_to
    ADD CONSTRAINT misago_threads_attachmenttype_limit_uploads_to_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_attachmenttype_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype
    ADD CONSTRAINT misago_threads_attachmenttype_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_poll_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_poll
    ADD CONSTRAINT misago_threads_poll_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_poll_thread_id_key; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_poll
    ADD CONSTRAINT misago_threads_poll_thread_id_key UNIQUE (thread_id);


--
-- Name: misago_threads_pollvote_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_pollvote
    ADD CONSTRAINT misago_threads_pollvote_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_post_mentions_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post_mentions
    ADD CONSTRAINT misago_threads_post_mentions_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_post_mentions_post_id_user_id_f96b558b_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post_mentions
    ADD CONSTRAINT misago_threads_post_mentions_post_id_user_id_f96b558b_uniq UNIQUE (post_id, user_id);


--
-- Name: misago_threads_post_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post
    ADD CONSTRAINT misago_threads_post_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_postedit_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postedit
    ADD CONSTRAINT misago_threads_postedit_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_postlike_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postlike
    ADD CONSTRAINT misago_threads_postlike_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_subscription
    ADD CONSTRAINT misago_threads_subscription_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_thread_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_thread
    ADD CONSTRAINT misago_threads_thread_pkey PRIMARY KEY (id);


--
-- Name: misago_threads_threadparticipant_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_threadparticipant
    ADD CONSTRAINT misago_threads_threadparticipant_pkey PRIMARY KEY (id);


--
-- Name: misago_users_activityranking_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_activityranking
    ADD CONSTRAINT misago_users_activityranking_pkey PRIMARY KEY (id);


--
-- Name: misago_users_avatar_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_avatar
    ADD CONSTRAINT misago_users_avatar_pkey PRIMARY KEY (id);


--
-- Name: misago_users_avatargallery_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_avatargallery
    ADD CONSTRAINT misago_users_avatargallery_pkey PRIMARY KEY (id);


--
-- Name: misago_users_ban_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_ban
    ADD CONSTRAINT misago_users_ban_pkey PRIMARY KEY (id);


--
-- Name: misago_users_bancache_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_bancache
    ADD CONSTRAINT misago_users_bancache_pkey PRIMARY KEY (user_id);


--
-- Name: misago_users_online_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_online
    ADD CONSTRAINT misago_users_online_pkey PRIMARY KEY (user_id);


--
-- Name: misago_users_rank_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_rank
    ADD CONSTRAINT misago_users_rank_pkey PRIMARY KEY (id);


--
-- Name: misago_users_rank_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_rank_roles
    ADD CONSTRAINT misago_users_rank_roles_pkey PRIMARY KEY (id);


--
-- Name: misago_users_rank_roles_rank_id_role_id_81914683_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_rank_roles
    ADD CONSTRAINT misago_users_rank_roles_rank_id_role_id_81914683_uniq UNIQUE (rank_id, role_id);


--
-- Name: misago_users_rank_slug_key; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_rank
    ADD CONSTRAINT misago_users_rank_slug_key UNIQUE (slug);


--
-- Name: misago_users_user_blocks_from_user_id_to_user_id_cc1691d3_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_blocks
    ADD CONSTRAINT misago_users_user_blocks_from_user_id_to_user_id_cc1691d3_uniq UNIQUE (from_user_id, to_user_id);


--
-- Name: misago_users_user_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_blocks
    ADD CONSTRAINT misago_users_user_blocks_pkey PRIMARY KEY (id);


--
-- Name: misago_users_user_email_hash_key; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user
    ADD CONSTRAINT misago_users_user_email_hash_key UNIQUE (email_hash);


--
-- Name: misago_users_user_follows_from_user_id_to_user_id_92296f5c_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_follows
    ADD CONSTRAINT misago_users_user_follows_from_user_id_to_user_id_92296f5c_uniq UNIQUE (from_user_id, to_user_id);


--
-- Name: misago_users_user_follows_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_follows
    ADD CONSTRAINT misago_users_user_follows_pkey PRIMARY KEY (id);


--
-- Name: misago_users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_groups
    ADD CONSTRAINT misago_users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: misago_users_user_groups_user_id_group_id_12611fe8_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_groups
    ADD CONSTRAINT misago_users_user_groups_user_id_group_id_12611fe8_uniq UNIQUE (user_id, group_id);


--
-- Name: misago_users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user
    ADD CONSTRAINT misago_users_user_pkey PRIMARY KEY (id);


--
-- Name: misago_users_user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_roles
    ADD CONSTRAINT misago_users_user_roles_pkey PRIMARY KEY (id);


--
-- Name: misago_users_user_roles_user_id_role_id_1cbe8d01_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_roles
    ADD CONSTRAINT misago_users_user_roles_user_id_role_id_1cbe8d01_uniq UNIQUE (user_id, role_id);


--
-- Name: misago_users_user_slug_key; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user
    ADD CONSTRAINT misago_users_user_slug_key UNIQUE (slug);


--
-- Name: misago_users_user_user_p_user_id_permission_id_dc758b0b_uniq; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_user_permissions
    ADD CONSTRAINT misago_users_user_user_p_user_id_permission_id_dc758b0b_uniq UNIQUE (user_id, permission_id);


--
-- Name: misago_users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_user_permissions
    ADD CONSTRAINT misago_users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: misago_users_usernamechange_pkey; Type: CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_usernamechange
    ADD CONSTRAINT misago_users_usernamechange_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: gql_platform_serialization_genres_genre_id_8fdbef18; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX gql_platform_serialization_genres_genre_id_8fdbef18 ON public.gql_platform_serialization_genres USING btree (genre_id);


--
-- Name: gql_platform_serialization_genres_serialization_id_0e3cfa56; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX gql_platform_serialization_genres_serialization_id_0e3cfa56 ON public.gql_platform_serialization_genres USING btree (serialization_id);


--
-- Name: gql_platform_userstatus_user_id_a33ca01c; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX gql_platform_userstatus_user_id_a33ca01c ON public.gql_platform_userstatus USING btree (user_id);


--
-- Name: misago_categories_category_archive_pruned_in_id_e8c49844; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_categories_category_archive_pruned_in_id_e8c49844 ON public.misago_categories_category USING btree (archive_pruned_in_id);


--
-- Name: misago_categories_category_last_poster_id_96db3f03; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_categories_category_last_poster_id_96db3f03 ON public.misago_categories_category USING btree (last_poster_id);


--
-- Name: misago_categories_category_last_thread_id_44625647; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_categories_category_last_thread_id_44625647 ON public.misago_categories_category USING btree (last_thread_id);


--
-- Name: misago_categories_category_level_59f71648; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_categories_category_level_59f71648 ON public.misago_categories_category USING btree (level);


--
-- Name: misago_categories_category_lft_e86ba50d; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_categories_category_lft_e86ba50d ON public.misago_categories_category USING btree (lft);


--
-- Name: misago_categories_category_parent_id_1d85cfdc; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_categories_category_parent_id_1d85cfdc ON public.misago_categories_category USING btree (parent_id);


--
-- Name: misago_categories_category_rght_53bdd53e; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_categories_category_rght_53bdd53e ON public.misago_categories_category USING btree (rght);


--
-- Name: misago_categories_category_tree_id_69f3b1ee; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_categories_category_tree_id_69f3b1ee ON public.misago_categories_category USING btree (tree_id);


--
-- Name: misago_categories_rolecategoryacl_category_id_99c2a9bb; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_categories_rolecategoryacl_category_id_99c2a9bb ON public.misago_categories_rolecategoryacl USING btree (category_id);


--
-- Name: misago_categories_rolecategoryacl_category_role_id_d3558bd9; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_categories_rolecategoryacl_category_role_id_d3558bd9 ON public.misago_categories_rolecategoryacl USING btree (category_role_id);


--
-- Name: misago_categories_rolecategoryacl_role_id_9e172a55; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_categories_rolecategoryacl_role_id_9e172a55 ON public.misago_categories_rolecategoryacl USING btree (role_id);


--
-- Name: misago_conf_setting_group_id_5535b708; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_conf_setting_group_id_5535b708 ON public.misago_conf_setting USING btree (group_id);


--
-- Name: misago_conf_setting_order_47a1f455; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_conf_setting_order_47a1f455 ON public.misago_conf_setting USING btree ("order");


--
-- Name: misago_conf_setting_setting_d5ff9d28_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_conf_setting_setting_d5ff9d28_like ON public.misago_conf_setting USING btree (setting varchar_pattern_ops);


--
-- Name: misago_conf_settingsgroup_key_94b95e3f_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_conf_settingsgroup_key_94b95e3f_like ON public.misago_conf_settingsgroup USING btree (key varchar_pattern_ops);


--
-- Name: misago_readtracker_postread_category_id_bb74f821; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_readtracker_postread_category_id_bb74f821 ON public.misago_readtracker_postread USING btree (category_id);


--
-- Name: misago_readtracker_postread_post_id_2be75383; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_readtracker_postread_post_id_2be75383 ON public.misago_readtracker_postread USING btree (post_id);


--
-- Name: misago_readtracker_postread_thread_id_7121201f; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_readtracker_postread_thread_id_7121201f ON public.misago_readtracker_postread USING btree (thread_id);


--
-- Name: misago_readtracker_postread_user_id_4a764d0f; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_readtracker_postread_user_id_4a764d0f ON public.misago_readtracker_postread USING btree (user_id);


--
-- Name: misago_thre_has_ope_479906_part; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_thre_has_ope_479906_part ON public.misago_threads_post USING btree (has_open_reports) WHERE (has_open_reports = true);


--
-- Name: misago_thre_has_rep_84acfa_part; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_thre_has_rep_84acfa_part ON public.misago_threads_thread USING btree (has_reported_posts) WHERE (has_reported_posts = true);


--
-- Name: misago_thre_has_una_b0dbf5_part; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_thre_has_una_b0dbf5_part ON public.misago_threads_thread USING btree (has_unapproved_posts) WHERE (has_unapproved_posts = true);


--
-- Name: misago_thre_is_hidd_85db69_part; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_thre_is_hidd_85db69_part ON public.misago_threads_post USING btree (is_hidden) WHERE (is_hidden = false);


--
-- Name: misago_thre_is_hidd_d2b96c_part; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_thre_is_hidd_d2b96c_part ON public.misago_threads_thread USING btree (is_hidden) WHERE (is_hidden = false);


--
-- Name: misago_thre_search__b472a2_gin; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_thre_search__b472a2_gin ON public.misago_threads_post USING gin (search_vector);


--
-- Name: misago_thre_weight_955884_part; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_thre_weight_955884_part ON public.misago_threads_thread USING btree (weight) WHERE (weight = 2);


--
-- Name: misago_thre_weight_9e8f9c_part; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_thre_weight_9e8f9c_part ON public.misago_threads_thread USING btree (weight) WHERE (weight = 1);


--
-- Name: misago_thre_weight__4af9ee_part; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_thre_weight__4af9ee_part ON public.misago_threads_thread USING btree (weight) WHERE (weight < 2);


--
-- Name: misago_thre_weight_c7ef29_part; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_thre_weight_c7ef29_part ON public.misago_threads_thread USING btree (weight) WHERE (weight = 0);


--
-- Name: misago_threads_attachment_filename_4160d232; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachment_filename_4160d232 ON public.misago_threads_attachment USING btree (filename);


--
-- Name: misago_threads_attachment_filename_4160d232_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachment_filename_4160d232_like ON public.misago_threads_attachment USING btree (filename varchar_pattern_ops);


--
-- Name: misago_threads_attachment_filetype_id_d1e5d86e; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachment_filetype_id_d1e5d86e ON public.misago_threads_attachment USING btree (filetype_id);


--
-- Name: misago_threads_attachment_post_id_68447b47; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachment_post_id_68447b47 ON public.misago_threads_attachment USING btree (post_id);


--
-- Name: misago_threads_attachment_size_b8dd6dfd; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachment_size_b8dd6dfd ON public.misago_threads_attachment USING btree (size);


--
-- Name: misago_threads_attachment_uploaded_on_08369cf7; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachment_uploaded_on_08369cf7 ON public.misago_threads_attachment USING btree (uploaded_on);


--
-- Name: misago_threads_attachment_uploader_id_9f21e391; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachment_uploader_id_9f21e391 ON public.misago_threads_attachment USING btree (uploader_id);


--
-- Name: misago_threads_attachment_uploader_slug_383b098d; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachment_uploader_slug_383b098d ON public.misago_threads_attachment USING btree (uploader_slug);


--
-- Name: misago_threads_attachment_uploader_slug_383b098d_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachment_uploader_slug_383b098d_like ON public.misago_threads_attachment USING btree (uploader_slug varchar_pattern_ops);


--
-- Name: misago_threads_attachmentt_attachmenttype_id_6996d5c4; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachmentt_attachmenttype_id_6996d5c4 ON public.misago_threads_attachmenttype_limit_uploads_to USING btree (attachmenttype_id);


--
-- Name: misago_threads_attachmentt_attachmenttype_id_7e25aa42; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachmentt_attachmenttype_id_7e25aa42 ON public.misago_threads_attachmenttype_limit_downloads_to USING btree (attachmenttype_id);


--
-- Name: misago_threads_attachmentt_role_id_cc342315; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachmentt_role_id_cc342315 ON public.misago_threads_attachmenttype_limit_downloads_to USING btree (role_id);


--
-- Name: misago_threads_attachmenttype_limit_uploads_to_role_id_65cc8efd; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_attachmenttype_limit_uploads_to_role_id_65cc8efd ON public.misago_threads_attachmenttype_limit_uploads_to USING btree (role_id);


--
-- Name: misago_threads_poll_category_id_29fa5f5d; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_poll_category_id_29fa5f5d ON public.misago_threads_poll USING btree (category_id);


--
-- Name: misago_threads_poll_poster_id_49715f68; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_poll_poster_id_49715f68 ON public.misago_threads_poll USING btree (poster_id);


--
-- Name: misago_threads_pollvote_category_id_92abdceb; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_pollvote_category_id_92abdceb ON public.misago_threads_pollvote USING btree (category_id);


--
-- Name: misago_threads_pollvote_choice_hash_98c31747; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_pollvote_choice_hash_98c31747 ON public.misago_threads_pollvote USING btree (choice_hash);


--
-- Name: misago_threads_pollvote_choice_hash_98c31747_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_pollvote_choice_hash_98c31747_like ON public.misago_threads_pollvote USING btree (choice_hash varchar_pattern_ops);


--
-- Name: misago_threads_pollvote_poll_id_d3fbfddf; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_pollvote_poll_id_d3fbfddf ON public.misago_threads_pollvote USING btree (poll_id);


--
-- Name: misago_threads_pollvote_poll_id_voter_name_0de4ca24_idx; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_pollvote_poll_id_voter_name_0de4ca24_idx ON public.misago_threads_pollvote USING btree (poll_id, voter_name);


--
-- Name: misago_threads_pollvote_thread_id_ef78c2ad; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_pollvote_thread_id_ef78c2ad ON public.misago_threads_pollvote USING btree (thread_id);


--
-- Name: misago_threads_pollvote_voter_id_979ff29f; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_pollvote_voter_id_979ff29f ON public.misago_threads_pollvote USING btree (voter_id);


--
-- Name: misago_threads_post_category_id_79f7f0ef; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_category_id_79f7f0ef ON public.misago_threads_post USING btree (category_id);


--
-- Name: misago_threads_post_hidden_by_id_452f0812; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_hidden_by_id_452f0812 ON public.misago_threads_post USING btree (hidden_by_id);


--
-- Name: misago_threads_post_hidden_by_slug_df670716; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_hidden_by_slug_df670716 ON public.misago_threads_post USING btree (hidden_by_slug);


--
-- Name: misago_threads_post_hidden_by_slug_df670716_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_hidden_by_slug_df670716_like ON public.misago_threads_post USING btree (hidden_by_slug varchar_pattern_ops);


--
-- Name: misago_threads_post_is_event_ba70bc13; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_is_event_ba70bc13 ON public.misago_threads_post USING btree (is_event);


--
-- Name: misago_threads_post_is_event_is_hidden_c3871ba0_idx; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_is_event_is_hidden_c3871ba0_idx ON public.misago_threads_post USING btree (is_event, is_hidden);


--
-- Name: misago_threads_post_is_unapproved_9240a4cc; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_is_unapproved_9240a4cc ON public.misago_threads_post USING btree (is_unapproved);


--
-- Name: misago_threads_post_last_editor_id_56e47ea4; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_last_editor_id_56e47ea4 ON public.misago_threads_post USING btree (last_editor_id);


--
-- Name: misago_threads_post_last_editor_slug_a28b663a; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_last_editor_slug_a28b663a ON public.misago_threads_post USING btree (last_editor_slug);


--
-- Name: misago_threads_post_last_editor_slug_a28b663a_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_last_editor_slug_a28b663a_like ON public.misago_threads_post USING btree (last_editor_slug varchar_pattern_ops);


--
-- Name: misago_threads_post_mentions_post_id_8d3c8c76; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_mentions_post_id_8d3c8c76 ON public.misago_threads_post_mentions USING btree (post_id);


--
-- Name: misago_threads_post_mentions_user_id_515d18c5; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_mentions_user_id_515d18c5 ON public.misago_threads_post_mentions USING btree (user_id);


--
-- Name: misago_threads_post_posted_on_00c20f4c; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_posted_on_00c20f4c ON public.misago_threads_post USING btree (posted_on);


--
-- Name: misago_threads_post_poster_id_b3163b03; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_poster_id_b3163b03 ON public.misago_threads_post USING btree (poster_id);


--
-- Name: misago_threads_post_poster_id_posted_on_16636124_idx; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_poster_id_posted_on_16636124_idx ON public.misago_threads_post USING btree (poster_id, posted_on);


--
-- Name: misago_threads_post_thread_id_8083899e; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_thread_id_8083899e ON public.misago_threads_post USING btree (thread_id);


--
-- Name: misago_threads_post_thread_id_id_b238a0d3_idx; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_post_thread_id_id_b238a0d3_idx ON public.misago_threads_post USING btree (thread_id, id);


--
-- Name: misago_threads_postedit_category_id_14762498; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_postedit_category_id_14762498 ON public.misago_threads_postedit USING btree (category_id);


--
-- Name: misago_threads_postedit_editor_id_3c099285; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_postedit_editor_id_3c099285 ON public.misago_threads_postedit USING btree (editor_id);


--
-- Name: misago_threads_postedit_post_id_831e29bb; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_postedit_post_id_831e29bb ON public.misago_threads_postedit USING btree (post_id);


--
-- Name: misago_threads_postedit_thread_id_a71149fd; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_postedit_thread_id_a71149fd ON public.misago_threads_postedit USING btree (thread_id);


--
-- Name: misago_threads_postlike_category_id_21e0c8ce; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_postlike_category_id_21e0c8ce ON public.misago_threads_postlike USING btree (category_id);


--
-- Name: misago_threads_postlike_liker_id_e9fbb1c9; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_postlike_liker_id_e9fbb1c9 ON public.misago_threads_postlike USING btree (liker_id);


--
-- Name: misago_threads_postlike_liker_name_1ead3b48; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_postlike_liker_name_1ead3b48 ON public.misago_threads_postlike USING btree (liker_name);


--
-- Name: misago_threads_postlike_liker_name_1ead3b48_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_postlike_liker_name_1ead3b48_like ON public.misago_threads_postlike USING btree (liker_name varchar_pattern_ops);


--
-- Name: misago_threads_postlike_post_id_7ec34c1c; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_postlike_post_id_7ec34c1c ON public.misago_threads_postlike USING btree (post_id);


--
-- Name: misago_threads_postlike_thread_id_38e33d41; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_postlike_thread_id_38e33d41 ON public.misago_threads_postlike USING btree (thread_id);


--
-- Name: misago_threads_subscript_send_email_last_read_on_d4a73c16_idx; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_subscript_send_email_last_read_on_d4a73c16_idx ON public.misago_threads_subscription USING btree (send_email, last_read_on);


--
-- Name: misago_threads_subscription_category_id_f5854673; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_subscription_category_id_f5854673 ON public.misago_threads_subscription USING btree (category_id);


--
-- Name: misago_threads_subscription_thread_id_f97c9a3b; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_subscription_thread_id_f97c9a3b ON public.misago_threads_subscription USING btree (thread_id);


--
-- Name: misago_threads_subscription_user_id_daf28105; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_subscription_user_id_daf28105 ON public.misago_threads_subscription USING btree (user_id);


--
-- Name: misago_threads_thread_category_id_e3266490; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_category_id_e3266490 ON public.misago_threads_thread USING btree (category_id);


--
-- Name: misago_threads_thread_category_id_id_300d1b53_idx; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_category_id_id_300d1b53_idx ON public.misago_threads_thread USING btree (category_id, id);


--
-- Name: misago_threads_thread_category_id_last_post_on_d56dce6c_idx; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_category_id_last_post_on_d56dce6c_idx ON public.misago_threads_thread USING btree (category_id, last_post_on);


--
-- Name: misago_threads_thread_category_id_replies_cde6b84a_idx; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_category_id_replies_cde6b84a_idx ON public.misago_threads_thread USING btree (category_id, replies);


--
-- Name: misago_threads_thread_first_post_id_b8139d81; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_first_post_id_b8139d81 ON public.misago_threads_thread USING btree (first_post_id);


--
-- Name: misago_threads_thread_is_unapproved_a55fb408; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_is_unapproved_a55fb408 ON public.misago_threads_thread USING btree (is_unapproved);


--
-- Name: misago_threads_thread_last_post_id_c638dfb4; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_last_post_id_c638dfb4 ON public.misago_threads_thread USING btree (last_post_id);


--
-- Name: misago_threads_thread_last_post_on_10841b1c; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_last_post_on_10841b1c ON public.misago_threads_thread USING btree (last_post_on);


--
-- Name: misago_threads_thread_last_poster_id_4fa32da6; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_last_poster_id_4fa32da6 ON public.misago_threads_thread USING btree (last_poster_id);


--
-- Name: misago_threads_thread_replies_1617266c; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_replies_1617266c ON public.misago_threads_thread USING btree (replies);


--
-- Name: misago_threads_thread_started_on_10445c64; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_started_on_10445c64 ON public.misago_threads_thread USING btree (started_on);


--
-- Name: misago_threads_thread_starter_id_7974db8c; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_thread_starter_id_7974db8c ON public.misago_threads_thread USING btree (starter_id);


--
-- Name: misago_threads_threadparticipant_thread_id_d468a2cb; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_threadparticipant_thread_id_d468a2cb ON public.misago_threads_threadparticipant USING btree (thread_id);


--
-- Name: misago_threads_threadparticipant_user_id_efbeaf80; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_threads_threadparticipant_user_id_efbeaf80 ON public.misago_threads_threadparticipant USING btree (user_id);


--
-- Name: misago_user_is_staf_bf68aa_part; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_user_is_staf_bf68aa_part ON public.misago_users_user USING btree (is_staff) WHERE (is_staff = true);


--
-- Name: misago_user_require_05204a_part; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_user_require_05204a_part ON public.misago_users_user USING btree (requires_activation) WHERE (requires_activation > 0);


--
-- Name: misago_users_activityranking_score_3e0a18df; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_activityranking_score_3e0a18df ON public.misago_users_activityranking USING btree (score);


--
-- Name: misago_users_activityranking_user_id_a962add9; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_activityranking_user_id_a962add9 ON public.misago_users_activityranking USING btree (user_id);


--
-- Name: misago_users_avatar_user_id_c3763aa1; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_avatar_user_id_c3763aa1 ON public.misago_users_avatar USING btree (user_id);


--
-- Name: misago_users_ban_banned_value_bd43b7e9; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_ban_banned_value_bd43b7e9 ON public.misago_users_ban USING btree (banned_value);


--
-- Name: misago_users_ban_banned_value_bd43b7e9_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_ban_banned_value_bd43b7e9_like ON public.misago_users_ban USING btree (banned_value varchar_pattern_ops);


--
-- Name: misago_users_ban_check_type_06e115d1; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_ban_check_type_06e115d1 ON public.misago_users_ban USING btree (check_type);


--
-- Name: misago_users_ban_expires_on_62433cd5; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_ban_expires_on_62433cd5 ON public.misago_users_ban USING btree (expires_on);


--
-- Name: misago_users_ban_is_checked_e23bc0a6; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_ban_is_checked_e23bc0a6 ON public.misago_users_ban USING btree (is_checked);


--
-- Name: misago_users_ban_registration_only_867b54d4; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_ban_registration_only_867b54d4 ON public.misago_users_ban USING btree (registration_only);


--
-- Name: misago_users_bancache_ban_id_2766ed56; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_bancache_ban_id_2766ed56 ON public.misago_users_bancache USING btree (ban_id);


--
-- Name: misago_users_rank_roles_rank_id_662c3ee7; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_rank_roles_rank_id_662c3ee7 ON public.misago_users_rank_roles USING btree (rank_id);


--
-- Name: misago_users_rank_roles_role_id_e0236d53; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_rank_roles_role_id_e0236d53 ON public.misago_users_rank_roles USING btree (role_id);


--
-- Name: misago_users_rank_slug_80e8f022_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_rank_slug_80e8f022_like ON public.misago_users_rank USING btree (slug varchar_pattern_ops);


--
-- Name: misago_users_user_blocks_from_user_id_a1352891; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_blocks_from_user_id_a1352891 ON public.misago_users_user_blocks USING btree (from_user_id);


--
-- Name: misago_users_user_blocks_to_user_id_b919ce82; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_blocks_to_user_id_b919ce82 ON public.misago_users_user_blocks USING btree (to_user_id);


--
-- Name: misago_users_user_email_1cdb37a6; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_email_1cdb37a6 ON public.misago_users_user USING btree (email);


--
-- Name: misago_users_user_email_1cdb37a6_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_email_1cdb37a6_like ON public.misago_users_user USING btree (email varchar_pattern_ops);


--
-- Name: misago_users_user_email_hash_55ddd5b1_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_email_hash_55ddd5b1_like ON public.misago_users_user USING btree (email_hash varchar_pattern_ops);


--
-- Name: misago_users_user_follows_from_user_id_9575602d; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_follows_from_user_id_9575602d ON public.misago_users_user_follows USING btree (from_user_id);


--
-- Name: misago_users_user_follows_to_user_id_8cc8eb10; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_follows_to_user_id_8cc8eb10 ON public.misago_users_user_follows USING btree (to_user_id);


--
-- Name: misago_users_user_groups_group_id_0b7c0680; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_groups_group_id_0b7c0680 ON public.misago_users_user_groups USING btree (group_id);


--
-- Name: misago_users_user_groups_user_id_ddeac4e6; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_groups_user_id_ddeac4e6 ON public.misago_users_user_groups USING btree (user_id);


--
-- Name: misago_users_user_is_active_fc628eb4; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_is_active_fc628eb4 ON public.misago_users_user USING btree (is_active);


--
-- Name: misago_users_user_posts_79cba5f0; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_posts_79cba5f0 ON public.misago_users_user USING btree (posts);


--
-- Name: misago_users_user_rank_id_25883ca9; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_rank_id_25883ca9 ON public.misago_users_user USING btree (rank_id);


--
-- Name: misago_users_user_roles_role_id_58d36725; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_roles_role_id_58d36725 ON public.misago_users_user_roles USING btree (role_id);


--
-- Name: misago_users_user_roles_user_id_af2be819; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_roles_user_id_af2be819 ON public.misago_users_user_roles USING btree (user_id);


--
-- Name: misago_users_user_slug_87d70f62_like; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_slug_87d70f62_like ON public.misago_users_user USING btree (slug varchar_pattern_ops);


--
-- Name: misago_users_user_user_permissions_permission_id_bd44102a; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_user_permissions_permission_id_bd44102a ON public.misago_users_user_user_permissions USING btree (permission_id);


--
-- Name: misago_users_user_user_permissions_user_id_264f5b9d; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_user_user_permissions_user_id_264f5b9d ON public.misago_users_user_user_permissions USING btree (user_id);


--
-- Name: misago_users_usernamechange_changed_by_id_bd7f6309; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_usernamechange_changed_by_id_bd7f6309 ON public.misago_users_usernamechange USING btree (changed_by_id);


--
-- Name: misago_users_usernamechange_user_id_ef2d9164; Type: INDEX; Schema: public; Owner: mmuser
--

CREATE INDEX misago_users_usernamechange_user_id_ef2d9164 ON public.misago_users_usernamechange USING btree (user_id);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_misago_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_misago_users_user_id FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gql_platform_seriali_genre_id_8fdbef18_fk_gql_platf; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_serialization_genres
    ADD CONSTRAINT gql_platform_seriali_genre_id_8fdbef18_fk_gql_platf FOREIGN KEY (genre_id) REFERENCES public.gql_platform_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gql_platform_seriali_serialization_id_0e3cfa56_fk_gql_platf; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_serialization_genres
    ADD CONSTRAINT gql_platform_seriali_serialization_id_0e3cfa56_fk_gql_platf FOREIGN KEY (serialization_id) REFERENCES public.gql_platform_serialization(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gql_platform_usersta_user_id_a33ca01c_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.gql_platform_userstatus
    ADD CONSTRAINT gql_platform_usersta_user_id_a33ca01c_fk_misago_us FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_categories_ca_archive_pruned_in_id_e8c49844_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_category
    ADD CONSTRAINT misago_categories_ca_archive_pruned_in_id_e8c49844_fk_misago_ca FOREIGN KEY (archive_pruned_in_id) REFERENCES public.misago_categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_categories_ca_last_poster_id_96db3f03_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_category
    ADD CONSTRAINT misago_categories_ca_last_poster_id_96db3f03_fk_misago_us FOREIGN KEY (last_poster_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_categories_ca_last_thread_id_44625647_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_category
    ADD CONSTRAINT misago_categories_ca_last_thread_id_44625647_fk_misago_th FOREIGN KEY (last_thread_id) REFERENCES public.misago_threads_thread(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_categories_ca_parent_id_1d85cfdc_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_category
    ADD CONSTRAINT misago_categories_ca_parent_id_1d85cfdc_fk_misago_ca FOREIGN KEY (parent_id) REFERENCES public.misago_categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_categories_ro_category_id_99c2a9bb_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_rolecategoryacl
    ADD CONSTRAINT misago_categories_ro_category_id_99c2a9bb_fk_misago_ca FOREIGN KEY (category_id) REFERENCES public.misago_categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_categories_ro_category_role_id_d3558bd9_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_rolecategoryacl
    ADD CONSTRAINT misago_categories_ro_category_role_id_d3558bd9_fk_misago_ca FOREIGN KEY (category_role_id) REFERENCES public.misago_categories_categoryrole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_categories_ro_role_id_9e172a55_fk_misago_ac; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_categories_rolecategoryacl
    ADD CONSTRAINT misago_categories_ro_role_id_9e172a55_fk_misago_ac FOREIGN KEY (role_id) REFERENCES public.misago_acl_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_conf_setting_group_id_5535b708_fk_misago_co; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_conf_setting
    ADD CONSTRAINT misago_conf_setting_group_id_5535b708_fk_misago_co FOREIGN KEY (group_id) REFERENCES public.misago_conf_settingsgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_readtracker_p_category_id_bb74f821_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_readtracker_postread
    ADD CONSTRAINT misago_readtracker_p_category_id_bb74f821_fk_misago_ca FOREIGN KEY (category_id) REFERENCES public.misago_categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_readtracker_p_post_id_2be75383_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_readtracker_postread
    ADD CONSTRAINT misago_readtracker_p_post_id_2be75383_fk_misago_th FOREIGN KEY (post_id) REFERENCES public.misago_threads_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_readtracker_p_thread_id_7121201f_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_readtracker_postread
    ADD CONSTRAINT misago_readtracker_p_thread_id_7121201f_fk_misago_th FOREIGN KEY (thread_id) REFERENCES public.misago_threads_thread(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_readtracker_p_user_id_4a764d0f_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_readtracker_postread
    ADD CONSTRAINT misago_readtracker_p_user_id_4a764d0f_fk_misago_us FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_attac_attachmenttype_id_6996d5c4_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype_limit_uploads_to
    ADD CONSTRAINT misago_threads_attac_attachmenttype_id_6996d5c4_fk_misago_th FOREIGN KEY (attachmenttype_id) REFERENCES public.misago_threads_attachmenttype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_attac_attachmenttype_id_7e25aa42_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype_limit_downloads_to
    ADD CONSTRAINT misago_threads_attac_attachmenttype_id_7e25aa42_fk_misago_th FOREIGN KEY (attachmenttype_id) REFERENCES public.misago_threads_attachmenttype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_attac_filetype_id_d1e5d86e_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachment
    ADD CONSTRAINT misago_threads_attac_filetype_id_d1e5d86e_fk_misago_th FOREIGN KEY (filetype_id) REFERENCES public.misago_threads_attachmenttype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_attac_post_id_68447b47_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachment
    ADD CONSTRAINT misago_threads_attac_post_id_68447b47_fk_misago_th FOREIGN KEY (post_id) REFERENCES public.misago_threads_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_attac_role_id_65cc8efd_fk_misago_ac; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype_limit_uploads_to
    ADD CONSTRAINT misago_threads_attac_role_id_65cc8efd_fk_misago_ac FOREIGN KEY (role_id) REFERENCES public.misago_acl_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_attac_role_id_cc342315_fk_misago_ac; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachmenttype_limit_downloads_to
    ADD CONSTRAINT misago_threads_attac_role_id_cc342315_fk_misago_ac FOREIGN KEY (role_id) REFERENCES public.misago_acl_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_attac_uploader_id_9f21e391_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_attachment
    ADD CONSTRAINT misago_threads_attac_uploader_id_9f21e391_fk_misago_us FOREIGN KEY (uploader_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_poll_category_id_29fa5f5d_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_poll
    ADD CONSTRAINT misago_threads_poll_category_id_29fa5f5d_fk_misago_ca FOREIGN KEY (category_id) REFERENCES public.misago_categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_poll_poster_id_49715f68_fk_misago_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_poll
    ADD CONSTRAINT misago_threads_poll_poster_id_49715f68_fk_misago_users_user_id FOREIGN KEY (poster_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_poll_thread_id_f200f01c_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_poll
    ADD CONSTRAINT misago_threads_poll_thread_id_f200f01c_fk_misago_th FOREIGN KEY (thread_id) REFERENCES public.misago_threads_thread(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_pollv_category_id_92abdceb_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_pollvote
    ADD CONSTRAINT misago_threads_pollv_category_id_92abdceb_fk_misago_ca FOREIGN KEY (category_id) REFERENCES public.misago_categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_pollv_poll_id_d3fbfddf_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_pollvote
    ADD CONSTRAINT misago_threads_pollv_poll_id_d3fbfddf_fk_misago_th FOREIGN KEY (poll_id) REFERENCES public.misago_threads_poll(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_pollv_thread_id_ef78c2ad_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_pollvote
    ADD CONSTRAINT misago_threads_pollv_thread_id_ef78c2ad_fk_misago_th FOREIGN KEY (thread_id) REFERENCES public.misago_threads_thread(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_pollv_voter_id_979ff29f_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_pollvote
    ADD CONSTRAINT misago_threads_pollv_voter_id_979ff29f_fk_misago_us FOREIGN KEY (voter_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_post__post_id_8d3c8c76_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post_mentions
    ADD CONSTRAINT misago_threads_post__post_id_8d3c8c76_fk_misago_th FOREIGN KEY (post_id) REFERENCES public.misago_threads_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_post__user_id_515d18c5_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post_mentions
    ADD CONSTRAINT misago_threads_post__user_id_515d18c5_fk_misago_us FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_post_category_id_79f7f0ef_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post
    ADD CONSTRAINT misago_threads_post_category_id_79f7f0ef_fk_misago_ca FOREIGN KEY (category_id) REFERENCES public.misago_categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_post_hidden_by_id_452f0812_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post
    ADD CONSTRAINT misago_threads_post_hidden_by_id_452f0812_fk_misago_us FOREIGN KEY (hidden_by_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_post_last_editor_id_56e47ea4_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post
    ADD CONSTRAINT misago_threads_post_last_editor_id_56e47ea4_fk_misago_us FOREIGN KEY (last_editor_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_post_poster_id_b3163b03_fk_misago_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post
    ADD CONSTRAINT misago_threads_post_poster_id_b3163b03_fk_misago_users_user_id FOREIGN KEY (poster_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_post_thread_id_8083899e_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_post
    ADD CONSTRAINT misago_threads_post_thread_id_8083899e_fk_misago_th FOREIGN KEY (thread_id) REFERENCES public.misago_threads_thread(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_poste_category_id_14762498_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postedit
    ADD CONSTRAINT misago_threads_poste_category_id_14762498_fk_misago_ca FOREIGN KEY (category_id) REFERENCES public.misago_categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_poste_editor_id_3c099285_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postedit
    ADD CONSTRAINT misago_threads_poste_editor_id_3c099285_fk_misago_us FOREIGN KEY (editor_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_poste_post_id_831e29bb_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postedit
    ADD CONSTRAINT misago_threads_poste_post_id_831e29bb_fk_misago_th FOREIGN KEY (post_id) REFERENCES public.misago_threads_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_poste_thread_id_a71149fd_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postedit
    ADD CONSTRAINT misago_threads_poste_thread_id_a71149fd_fk_misago_th FOREIGN KEY (thread_id) REFERENCES public.misago_threads_thread(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_postl_category_id_21e0c8ce_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postlike
    ADD CONSTRAINT misago_threads_postl_category_id_21e0c8ce_fk_misago_ca FOREIGN KEY (category_id) REFERENCES public.misago_categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_postl_liker_id_e9fbb1c9_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postlike
    ADD CONSTRAINT misago_threads_postl_liker_id_e9fbb1c9_fk_misago_us FOREIGN KEY (liker_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_postl_post_id_7ec34c1c_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postlike
    ADD CONSTRAINT misago_threads_postl_post_id_7ec34c1c_fk_misago_th FOREIGN KEY (post_id) REFERENCES public.misago_threads_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_postl_thread_id_38e33d41_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_postlike
    ADD CONSTRAINT misago_threads_postl_thread_id_38e33d41_fk_misago_th FOREIGN KEY (thread_id) REFERENCES public.misago_threads_thread(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_subsc_category_id_f5854673_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_subscription
    ADD CONSTRAINT misago_threads_subsc_category_id_f5854673_fk_misago_ca FOREIGN KEY (category_id) REFERENCES public.misago_categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_subsc_thread_id_f97c9a3b_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_subscription
    ADD CONSTRAINT misago_threads_subsc_thread_id_f97c9a3b_fk_misago_th FOREIGN KEY (thread_id) REFERENCES public.misago_threads_thread(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_subsc_user_id_daf28105_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_subscription
    ADD CONSTRAINT misago_threads_subsc_user_id_daf28105_fk_misago_us FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_threa_category_id_e3266490_fk_misago_ca; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_thread
    ADD CONSTRAINT misago_threads_threa_category_id_e3266490_fk_misago_ca FOREIGN KEY (category_id) REFERENCES public.misago_categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_threa_first_post_id_b8139d81_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_thread
    ADD CONSTRAINT misago_threads_threa_first_post_id_b8139d81_fk_misago_th FOREIGN KEY (first_post_id) REFERENCES public.misago_threads_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_threa_last_post_id_c638dfb4_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_thread
    ADD CONSTRAINT misago_threads_threa_last_post_id_c638dfb4_fk_misago_th FOREIGN KEY (last_post_id) REFERENCES public.misago_threads_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_threa_last_poster_id_4fa32da6_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_thread
    ADD CONSTRAINT misago_threads_threa_last_poster_id_4fa32da6_fk_misago_us FOREIGN KEY (last_poster_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_threa_starter_id_7974db8c_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_thread
    ADD CONSTRAINT misago_threads_threa_starter_id_7974db8c_fk_misago_us FOREIGN KEY (starter_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_threa_thread_id_d468a2cb_fk_misago_th; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_threadparticipant
    ADD CONSTRAINT misago_threads_threa_thread_id_d468a2cb_fk_misago_th FOREIGN KEY (thread_id) REFERENCES public.misago_threads_thread(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_threads_threa_user_id_efbeaf80_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_threads_threadparticipant
    ADD CONSTRAINT misago_threads_threa_user_id_efbeaf80_fk_misago_us FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_activit_user_id_a962add9_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_activityranking
    ADD CONSTRAINT misago_users_activit_user_id_a962add9_fk_misago_us FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_avatar_user_id_c3763aa1_fk_misago_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_avatar
    ADD CONSTRAINT misago_users_avatar_user_id_c3763aa1_fk_misago_users_user_id FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_bancache_ban_id_2766ed56_fk_misago_users_ban_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_bancache
    ADD CONSTRAINT misago_users_bancache_ban_id_2766ed56_fk_misago_users_ban_id FOREIGN KEY (ban_id) REFERENCES public.misago_users_ban(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_bancache_user_id_8ce1ac71_fk_misago_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_bancache
    ADD CONSTRAINT misago_users_bancache_user_id_8ce1ac71_fk_misago_users_user_id FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_online_user_id_a38e83e3_fk_misago_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_online
    ADD CONSTRAINT misago_users_online_user_id_a38e83e3_fk_misago_users_user_id FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_rank_ro_rank_id_662c3ee7_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_rank_roles
    ADD CONSTRAINT misago_users_rank_ro_rank_id_662c3ee7_fk_misago_us FOREIGN KEY (rank_id) REFERENCES public.misago_users_rank(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_rank_roles_role_id_e0236d53_fk_misago_acl_role_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_rank_roles
    ADD CONSTRAINT misago_users_rank_roles_role_id_e0236d53_fk_misago_acl_role_id FOREIGN KEY (role_id) REFERENCES public.misago_acl_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_user_bl_from_user_id_a1352891_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_blocks
    ADD CONSTRAINT misago_users_user_bl_from_user_id_a1352891_fk_misago_us FOREIGN KEY (from_user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_user_bl_to_user_id_b919ce82_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_blocks
    ADD CONSTRAINT misago_users_user_bl_to_user_id_b919ce82_fk_misago_us FOREIGN KEY (to_user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_user_fo_from_user_id_9575602d_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_follows
    ADD CONSTRAINT misago_users_user_fo_from_user_id_9575602d_fk_misago_us FOREIGN KEY (from_user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_user_fo_to_user_id_8cc8eb10_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_follows
    ADD CONSTRAINT misago_users_user_fo_to_user_id_8cc8eb10_fk_misago_us FOREIGN KEY (to_user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_user_gr_user_id_ddeac4e6_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_groups
    ADD CONSTRAINT misago_users_user_gr_user_id_ddeac4e6_fk_misago_us FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_user_groups_group_id_0b7c0680_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_groups
    ADD CONSTRAINT misago_users_user_groups_group_id_0b7c0680_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_user_rank_id_25883ca9_fk_misago_users_rank_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user
    ADD CONSTRAINT misago_users_user_rank_id_25883ca9_fk_misago_users_rank_id FOREIGN KEY (rank_id) REFERENCES public.misago_users_rank(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_user_ro_user_id_af2be819_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_roles
    ADD CONSTRAINT misago_users_user_ro_user_id_af2be819_fk_misago_us FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_user_roles_role_id_58d36725_fk_misago_acl_role_id; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_roles
    ADD CONSTRAINT misago_users_user_roles_role_id_58d36725_fk_misago_acl_role_id FOREIGN KEY (role_id) REFERENCES public.misago_acl_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_user_us_permission_id_bd44102a_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_user_permissions
    ADD CONSTRAINT misago_users_user_us_permission_id_bd44102a_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_user_us_user_id_264f5b9d_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_user_user_permissions
    ADD CONSTRAINT misago_users_user_us_user_id_264f5b9d_fk_misago_us FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_usernam_changed_by_id_bd7f6309_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_usernamechange
    ADD CONSTRAINT misago_users_usernam_changed_by_id_bd7f6309_fk_misago_us FOREIGN KEY (changed_by_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misago_users_usernam_user_id_ef2d9164_fk_misago_us; Type: FK CONSTRAINT; Schema: public; Owner: mmuser
--

ALTER TABLE ONLY public.misago_users_usernamechange
    ADD CONSTRAINT misago_users_usernam_user_id_ef2d9164_fk_misago_us FOREIGN KEY (user_id) REFERENCES public.misago_users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


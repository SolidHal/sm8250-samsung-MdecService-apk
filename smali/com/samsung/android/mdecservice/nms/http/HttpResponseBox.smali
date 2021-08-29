.class public Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;
.super Ljava/lang/Object;
.source "HttpResponseBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;
    }
.end annotation


# static fields
.field public static final ACCEPTED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final BAD_GATEWAY:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final BAD_REQUEST:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final CONFLICT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final CONTINUE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final CREATED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final EXPECTATION_FAILED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final FAILED_DEPENDENCY:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final FORBIDDEN:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final FORBIDDEN_INVALID_ACCESS_TOKEN:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final FORBIDDEN_NOT_AUTHORIZED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final FOUND:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final GATEWAY_TIMEOUT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final GONE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final HTTP_VERSION_NOT_SUPPORTED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final INSUFFICIENT_STORAGE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final INTERNAL_ERROR:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final INTERNAL_RETRY_ERROR:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final INTERNAL_SERVER_ERROR:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final LENGTH_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final LOCKED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final METHOD_NOT_ALLOWED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final MOVED_PERMANENTLY:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final MULTIPLE_CHOICES:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final MULTI_STATUS:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final NETWORK_AUTHENTICATION_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final NON_AUTHORITATIVE_INFORMATION:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final NOT_ACCEPTABLE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final NOT_EXTENDED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final NOT_FOUND:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final NOT_IMPLEMENTED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final NOT_MODIFIED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final NO_CONTENT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final OK:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final PARTIAL_CONTENT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final PAYMENT_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final PRECONDITION_FAILED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final PRECONDITION_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final PROCESSING:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final PROXY_AUTHENTICATION_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final REQUESTED_RANGE_NOT_SATISFIABLE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final REQUEST_ENTITY_TOO_LARGE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final REQUEST_HEADER_FIELDS_TOO_LARGE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final REQUEST_TIMEOUT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final REQUEST_URI_TOO_LONG:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final RESET_CONTENT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final SEE_OTHER:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final SERVICE_UNAVAILABLE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final SWITCHING_PROTOCOLS:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final TEMPORARY_REDIRECT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final TOO_MANY_REQUESTS:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final UNAUTHORIZED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final UNORDERED_COLLECTION:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final UNPROCESSABLE_ENTITY:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final UNSUPPORTED_MEDIA_TYPE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final UPGRADE_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final USE_PROXY:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field public static final VARIANT_ALSO_NEGOTIATES:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

.field private static mCodeResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mdecservice/nms/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/4 v1, -0x1

    const-string v2, "Internal Error"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->INTERNAL_ERROR:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/4 v1, -0x2

    const-string v2, "Internal Retry Error"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->INTERNAL_RETRY_ERROR:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x64

    const-string v2, "Continue"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->CONTINUE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x65

    const-string v2, "Switching Protocols"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->SWITCHING_PROTOCOLS:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x66

    const-string v2, "Processing"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->PROCESSING:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 6
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0xc8

    const-string v2, "Ok"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->OK:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 7
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0xc9

    const-string v2, "Created"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->CREATED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0xca

    const-string v2, "Accepted"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->ACCEPTED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 9
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0xcb

    const-string v2, "Non-Authoritative Information"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->NON_AUTHORITATIVE_INFORMATION:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 10
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0xcc

    const-string v2, "No Content"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->NO_CONTENT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 11
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0xcd

    const-string v2, "Reset Content"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->RESET_CONTENT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 12
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0xce

    const-string v2, "Partial Content"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->PARTIAL_CONTENT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 13
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0xcf

    const-string v2, "Multi-Status"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->MULTI_STATUS:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 14
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x12c

    const-string v2, "Multiple Choices"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->MULTIPLE_CHOICES:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 15
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x12d

    const-string v2, "Moved Permanently"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->MOVED_PERMANENTLY:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 16
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x12e

    const-string v2, "Found"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->FOUND:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 17
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x12f

    const-string v2, "See Other"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->SEE_OTHER:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 18
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x130

    const-string v2, "Not Modified"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->NOT_MODIFIED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 19
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x131

    const-string v2, "Use Proxy"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->USE_PROXY:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 20
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x133

    const-string v2, "Temporary Redirect"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->TEMPORARY_REDIRECT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 21
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x190

    const-string v2, "Bad Request"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->BAD_REQUEST:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 22
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x191

    const-string v2, "Unauthorized"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->UNAUTHORIZED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 23
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x192

    const-string v2, "Payment Required"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->PAYMENT_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 24
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x193

    const-string v2, "Forbidden"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->FORBIDDEN:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 25
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const-string v3, "Invalid Access Token"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->FORBIDDEN_INVALID_ACCESS_TOKEN:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 26
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const-string v3, "Not Authorized"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->FORBIDDEN_NOT_AUTHORIZED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 27
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x194

    const-string v2, "Not Found"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->NOT_FOUND:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 28
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x195

    const-string v2, "Method Not Allowed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->METHOD_NOT_ALLOWED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 29
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x196

    const-string v2, "Not Acceptable"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->NOT_ACCEPTABLE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 30
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x197

    const-string v2, "Proxy Authentication Required"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->PROXY_AUTHENTICATION_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 31
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x198

    const-string v2, "Request Timeout"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->REQUEST_TIMEOUT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 32
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x199

    const-string v2, "Conflict"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->CONFLICT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 33
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x19a

    const-string v2, "Gone"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->GONE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 34
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x19b

    const-string v2, "Length Required"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->LENGTH_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 35
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x19c

    const-string v2, "Precondition Failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->PRECONDITION_FAILED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 36
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x19d

    const-string v2, "Request Entity Too Large"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->REQUEST_ENTITY_TOO_LARGE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 37
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x19e

    const-string v2, "Request-URI Too Long"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->REQUEST_URI_TOO_LONG:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 38
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x19f

    const-string v2, "Unsupported Media Type"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->UNSUPPORTED_MEDIA_TYPE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 39
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1a0

    const-string v2, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->REQUESTED_RANGE_NOT_SATISFIABLE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 40
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1a1

    const-string v2, "Expectation Failed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->EXPECTATION_FAILED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 41
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1a6

    const-string v2, "Unprocessable Entity"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->UNPROCESSABLE_ENTITY:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 42
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1a7

    const-string v2, "Locked"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->LOCKED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 43
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1a8

    const-string v2, "Failed Dependency"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->FAILED_DEPENDENCY:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 44
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1a9

    const-string v2, "Unordered Collection"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->UNORDERED_COLLECTION:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 45
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1aa

    const-string v2, "Upgrade Required "

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->UPGRADE_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 46
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1ac

    const-string v2, "Precondition Required"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->PRECONDITION_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 47
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1ad

    const-string v2, "Too Many Requests"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->TOO_MANY_REQUESTS:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 48
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1af

    const-string v2, "Request Header Fields Too Large"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->REQUEST_HEADER_FIELDS_TOO_LARGE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 49
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1f4

    const-string v2, "Internal Server Error"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->INTERNAL_SERVER_ERROR:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 50
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1f5

    const-string v2, "Not Implemented"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->NOT_IMPLEMENTED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 51
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1f6

    const-string v2, "Bad Gateway"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->BAD_GATEWAY:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 52
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1f7

    const-string v2, "Service Unavailable"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->SERVICE_UNAVAILABLE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 53
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1f8

    const-string v2, "Gateway Timeout"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->GATEWAY_TIMEOUT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 54
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1f9

    const-string v2, "HTTP Version Not Supported"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->HTTP_VERSION_NOT_SUPPORTED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 55
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1fa

    const-string v2, "Variant Also Negotiates"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->VARIANT_ALSO_NEGOTIATES:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 56
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1fb

    const-string v2, "Insufficient Storage"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->INSUFFICIENT_STORAGE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 57
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1fe

    const-string v2, "Not Extended"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->NOT_EXTENDED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 58
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/16 v1, 0x1ff

    const-string v2, "Network Authentication Required"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->NETWORK_AUTHENTICATION_REQUIRED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 59
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$1;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->mCodeResponseMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReasonByCode(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->mCodeResponseMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->getReason()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Unknown"

    return-object p0
.end method

.method public static translateErrorCodeToCmcError(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)I
    .locals 3

    const/16 v0, 0x2bd

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->OK:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x2bc

    if-nez v1, :cond_4

    sget-object v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->CREATED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 2
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->NO_CONTENT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 3
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->ERROR_5XX:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    invoke-virtual {v1, p0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->equals(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->SERVICE_UNAVAILABLE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 6
    :cond_2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->INTERNAL_RETRY_ERROR:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v0, 0xc8

    :cond_5
    :goto_1
    return v0
.end method

.method public static translateReasonToCmcFailureReason(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->SERVICE_UNAVAILABLE:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v1, p0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x12d

    goto :goto_0

    .line 2
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->INTERNAL_SERVER_ERROR:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v1, p0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 v0, 0x1f4

    :cond_2
    :goto_0
    return v0
.end method

.class public final enum Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;
.super Ljava/lang/Enum;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/http/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

.field public static final enum DELETE:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

.field public static final enum GET:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

.field public static final enum HEAD:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

.field public static final enum OPTIONS:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

.field public static final enum PATCH:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

.field public static final enum POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

.field public static final enum PUT:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

.field public static final enum TRACE:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;


# instance fields
.field method:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->GET:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->PUT:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->DELETE:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "HEAD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->HEAD:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "OPTIONS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->OPTIONS:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "TRACE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->TRACE:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const-string v1, "PATCH"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->PATCH:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    .line 2
    sget-object v10, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->GET:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    aput-object v10, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->PUT:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->DELETE:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->HEAD:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    aput-object v2, v1, v6

    sget-object v2, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->OPTIONS:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    aput-object v2, v1, v7

    sget-object v2, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->TRACE:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->$VALUES:[Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->method:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->$VALUES:[Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    return-object v0
.end method

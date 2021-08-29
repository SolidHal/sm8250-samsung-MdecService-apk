.class public final enum Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;
.super Ljava/lang/Enum;
.source "HttpResponseBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

.field public static final enum ERROR_4XX:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

.field public static final enum ERROR_5XX:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

.field public static final enum ERROR_6XX:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

.field public static final enum SUCCESS:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->SUCCESS:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    const-string v1, "ERROR_4XX"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->ERROR_4XX:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    const-string v1, "ERROR_5XX"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v3, v6}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->ERROR_5XX:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    const-string v1, "ERROR_6XX"

    const/4 v6, 0x3

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->ERROR_6XX:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    new-array v1, v5, [Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    .line 5
    sget-object v5, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->SUCCESS:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->ERROR_4XX:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->ERROR_5XX:Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    aput-object v2, v1, v3

    aput-object v0, v1, v6

    sput-object v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

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
    iput p3, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->mType:I

    div-int/lit8 p1, p1, 0x64

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox$HttpResponseType;->equals(I)Z

    move-result p1

    return p1
.end method

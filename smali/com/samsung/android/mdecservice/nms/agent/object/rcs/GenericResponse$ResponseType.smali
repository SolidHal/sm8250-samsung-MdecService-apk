.class public final enum Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;
.super Ljava/lang/Enum;
.source "GenericResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

.field public static final enum RESPONSE_ON_BULK_DELETE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

.field public static final enum RESPONSE_ON_BULK_GET:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

.field public static final enum RESPONSE_ON_BULK_POST:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

.field public static final enum RESPONSE_ON_BULK_UPDATE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

.field public static final enum RESPONSE_ON_SINGLE_DELETE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

.field public static final enum RESPONSE_ON_SINGLE_GET:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

.field public static final enum RESPONSE_ON_SINGLE_POST:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

.field public static final enum RESPONSE_ON_SINGLE_UPDATE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const-string v1, "RESPONSE_ON_SINGLE_POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_POST:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const-string v1, "RESPONSE_ON_BULK_POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_BULK_POST:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const-string v1, "RESPONSE_ON_SINGLE_UPDATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_UPDATE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const-string v1, "RESPONSE_ON_BULK_UPDATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_BULK_UPDATE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const-string v1, "RESPONSE_ON_SINGLE_DELETE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_DELETE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    .line 6
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const-string v1, "RESPONSE_ON_BULK_DELETE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_BULK_DELETE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    .line 7
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const-string v1, "RESPONSE_ON_SINGLE_GET"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_GET:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const-string v1, "RESPONSE_ON_BULK_GET"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_BULK_GET:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    .line 9
    sget-object v10, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_POST:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    aput-object v10, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_BULK_POST:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_UPDATE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_BULK_UPDATE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_DELETE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_BULK_DELETE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_GET:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    return-object v0
.end method

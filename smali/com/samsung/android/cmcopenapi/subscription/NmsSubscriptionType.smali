.class public final enum Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;
.super Ljava/lang/Enum;
.source "NmsSubscriptionType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

.field public static final enum CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

.field public static final SERVICE_COUNT:I = 0x2


# instance fields
.field private idx:I

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    const-string v1, "MESSAGE"

    const/4 v2, 0x0

    const-string v3, "message"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 2
    new-instance v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    const-string v1, "CALLLOG"

    const/4 v3, 0x1

    const-string v4, "calllog"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 3
    sget-object v4, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->$VALUES:[Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 4
    new-instance v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->idx:I

    .line 3
    iput-object p4, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->tag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->$VALUES:[Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIdx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->idx:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

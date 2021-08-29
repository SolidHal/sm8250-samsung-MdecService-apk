.class final enum Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;
.super Ljava/lang/Enum;
.source "CallMessageSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PreferenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

.field public static final enum CALL:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

.field public static final enum MESSAGE:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    const-string v1, "CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;->CALL:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    new-instance v0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    const-string v1, "MESSAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;->MESSAGE:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    .line 2
    sget-object v4, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;->CALL:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;->$VALUES:[Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;->$VALUES:[Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    return-object v0
.end method

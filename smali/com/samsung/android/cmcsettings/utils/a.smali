.class public final synthetic Lcom/samsung/android/cmcsettings/utils/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/utils/a;->a:Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/a;->a:Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    check-cast p1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->a(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;)Z

    move-result p1

    return p1
.end method

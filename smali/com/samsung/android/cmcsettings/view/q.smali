.class public final synthetic Lcom/samsung/android/cmcsettings/view/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

.field public final synthetic c:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/q;->b:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/q;->c:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/q;->b:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/q;->c:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->g(Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;)V

    return-void
.end method

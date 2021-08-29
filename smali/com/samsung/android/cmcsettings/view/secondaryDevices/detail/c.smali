.class public final synthetic Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

.field public final synthetic c:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/c;->b:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/c;->c:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    iput-object p3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/c;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/c;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/c;->b:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/c;->c:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/c;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/c;->e:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->d(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Ljava/lang/String;Z)V

    return-void
.end method

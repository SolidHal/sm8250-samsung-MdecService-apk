.class public final synthetic Lcom/samsung/android/cmcsettings/view/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/c;->b:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    iput-boolean p2, p0, Lcom/samsung/android/cmcsettings/view/c;->c:Z

    iput-object p3, p0, Lcom/samsung/android/cmcsettings/view/c;->d:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    iput p4, p0, Lcom/samsung/android/cmcsettings/view/c;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/c;->b:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/view/c;->c:Z

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/c;->d:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    iget v3, p0, Lcom/samsung/android/cmcsettings/view/c;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->q(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    return-void
.end method

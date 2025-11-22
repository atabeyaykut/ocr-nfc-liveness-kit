.class public final Lorg/altbeacon/beacon/service/ScanJob$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/ScanJob$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/altbeacon/beacon/service/ScanJob$a;


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/service/ScanJob$a;)V
    .locals 0

    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanJob$a$a;->a:Lorg/altbeacon/beacon/service/ScanJob$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget v0, Lorg/altbeacon/beacon/service/ScanJob;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scan job runtime expired: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob$a$a;->a:Lorg/altbeacon/beacon/service/ScanJob$a;

    iget-object v2, v1, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ScanJob"

    invoke-static {v4, v0, v3}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanJob;->e()V

    iget-object v0, v1, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    iget-object v0, v0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    invoke-virtual {v0}, Lkd/m;->e()V

    iget-object v0, v1, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    iget-object v3, v1, Lorg/altbeacon/beacon/service/ScanJob$a;->a:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v3, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    iget-object v0, v1, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    iget-object v0, v0, Lorg/altbeacon/beacon/service/ScanJob;->b:Landroid/os/Handler;

    new-instance v1, Lorg/altbeacon/beacon/service/ScanJob$a$a$a;

    invoke-direct {v1, p0}, Lorg/altbeacon/beacon/service/ScanJob$a$a$a;-><init>(Lorg/altbeacon/beacon/service/ScanJob$a$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

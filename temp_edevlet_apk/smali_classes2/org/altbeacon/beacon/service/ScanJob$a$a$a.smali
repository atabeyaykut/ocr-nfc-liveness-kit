.class public final Lorg/altbeacon/beacon/service/ScanJob$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/ScanJob$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/altbeacon/beacon/service/ScanJob$a$a;


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/service/ScanJob$a$a;)V
    .locals 0

    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanJob$a$a$a;->a:Lorg/altbeacon/beacon/service/ScanJob$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob$a$a$a;->a:Lorg/altbeacon/beacon/service/ScanJob$a$a;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/altbeacon/beacon/service/ScanJob$a$a;->a:Lorg/altbeacon/beacon/service/ScanJob$a;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/altbeacon/beacon/service/ScanJob$a;->b:Lorg/altbeacon/beacon/service/ScanJob;

    .line 6
    .line 7
    iget-object v1, v0, Lorg/altbeacon/beacon/service/ScanJob;->a:Lkd/m;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Lkd/m;->a()Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    new-array v2, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v3, "ScanJob"

    .line 25
    .line 26
    const-string v4, "In foreground mode, schedule next scan"

    .line 27
    .line 28
    invoke-static {v3, v4, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lkd/l;->c()Lkd/l;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v0}, Lkd/m;->d(Landroid/content/Context;)Lkd/m;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v0, v3, v1}, Lkd/l;->d(Landroid/content/Context;Lkd/m;Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanJob;->d()V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

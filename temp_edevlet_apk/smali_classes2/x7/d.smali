.class public final Lx7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lv7/h;->c()Lv7/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lz7/b;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lv7/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lz7/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->f:Lx7/c;

    .line 17
    .line 18
    new-instance v2, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    .line 19
    .line 20
    iget-object v3, v0, Lz7/b;->a:Lz7/c;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Lv7/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lz7/e;

    .line 27
    .line 28
    iget-object v0, v0, Lz7/b;->b:Lv7/d;

    .line 29
    .line 30
    iget-object v0, v0, Lv7/d;->a:La7/b;

    .line 31
    .line 32
    invoke-interface {v0}, La7/b;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    invoke-static {}, Lz7/a;->b()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Lp4/da;->c(Ljava/lang/String;)Lp4/v9;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-direct {v2, v1, v0, v3}, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;-><init>(Lz7/e;Ljava/util/concurrent/Executor;Lp4/v9;)V

    .line 47
    .line 48
    .line 49
    return-object v2
.end method

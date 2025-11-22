.class public final Lc8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lc8/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lc8/d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lv7/h;->c()Lv7/h;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-class v2, Ld8/f;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lv7/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ld8/f;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;

    .line 22
    .line 23
    iget-object v3, v1, Ld8/f;->a:Ld8/g;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Lv7/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ld8/h;

    .line 30
    .line 31
    iget-object v1, v1, Ld8/f;->b:Lv7/d;

    .line 32
    .line 33
    iget-object v1, v1, Lv7/d;->a:La7/b;

    .line 34
    .line 35
    invoke-interface {v1}, La7/b;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    invoke-virtual {v0}, Lc8/d;->a()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Ls4/d9;->e(Ljava/lang/String;)Ls4/x8;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0}, Lc8/d;->d()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-direct {v2, v3, v1, v4, v0}, Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;-><init>(Ld8/h;Ljava/util/concurrent/Executor;Ls4/x8;Z)V

    .line 54
    .line 55
    .line 56
    return-object v2
.end method

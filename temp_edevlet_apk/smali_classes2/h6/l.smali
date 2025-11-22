.class public final Lh6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh5/j<",
        "Lp6/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lh6/m;


# direct methods
.method public constructor <init>(Lh6/m;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lh6/l;->b:Lh6/m;

    iput-object p2, p0, Lh6/l;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lh5/k;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lp6/a;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "FirebaseCrashlytics"

    .line 6
    .line 7
    const-string v0, "Received null app settings, cannot send reports at crash time."

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lh5/n;->e(Ljava/lang/Object;)Lh5/z;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x2

    .line 19
    new-array p1, p1, [Lh5/k;

    .line 20
    .line 21
    iget-object v0, p0, Lh6/l;->b:Lh6/m;

    .line 22
    .line 23
    iget-object v1, v0, Lh6/m;->e:Lh6/t;

    .line 24
    .line 25
    invoke-static {v1}, Lh6/t;->b(Lh6/t;)Lh5/z;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v1, p1, v2

    .line 31
    .line 32
    iget-object v0, v0, Lh6/m;->e:Lh6/t;

    .line 33
    .line 34
    iget-object v0, v0, Lh6/t;->k:Lh6/m0;

    .line 35
    .line 36
    iget-object v1, p0, Lh6/l;->a:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lh6/m0;->d(Ljava/util/concurrent/Executor;)Lh5/z;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x1

    .line 43
    aput-object v0, p1, v1

    .line 44
    .line 45
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/util/List;

    .line 50
    .line 51
    invoke-static {p1}, Lh5/n;->f(Ljava/util/List;)Lh5/z;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_0
    return-object p1
.end method

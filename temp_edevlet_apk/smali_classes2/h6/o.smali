.class public final Lh6/o;
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

.field public final synthetic b:Lh6/p;


# direct methods
.method public constructor <init>(Lh6/p;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lh6/o;->b:Lh6/p;

    iput-object p2, p0, Lh6/o;->a:Ljava/util/concurrent/Executor;

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
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "FirebaseCrashlytics"

    .line 7
    .line 8
    const-string v1, "Received null app settings at app startup. Cannot send cached reports"

    .line 9
    .line 10
    invoke-static {p1, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lh6/o;->b:Lh6/p;

    .line 15
    .line 16
    iget-object v1, p1, Lh6/p;->b:Lh6/q;

    .line 17
    .line 18
    iget-object v1, v1, Lh6/q;->b:Lh6/t;

    .line 19
    .line 20
    invoke-static {v1}, Lh6/t;->b(Lh6/t;)Lh5/z;

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lh6/p;->b:Lh6/q;

    .line 24
    .line 25
    iget-object v1, p1, Lh6/q;->b:Lh6/t;

    .line 26
    .line 27
    iget-object v1, v1, Lh6/t;->k:Lh6/m0;

    .line 28
    .line 29
    iget-object v2, p0, Lh6/o;->a:Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lh6/m0;->d(Ljava/util/concurrent/Executor;)Lh5/z;

    .line 32
    .line 33
    .line 34
    iget-object p1, p1, Lh6/q;->b:Lh6/t;

    .line 35
    .line 36
    iget-object p1, p1, Lh6/t;->o:Lh5/l;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-static {v0}, Lh5/n;->e(Ljava/lang/Object;)Lh5/z;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

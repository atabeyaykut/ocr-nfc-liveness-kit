.class public final Lc5/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lc5/t7;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lc5/w4;


# direct methods
.method public constructor <init>(Lc5/w4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc5/u4;->b:Lc5/w4;

    iput-object p2, p0, Lc5/u4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/u4;->b:Lc5/w4;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/w4;->a:Lc5/o7;

    .line 4
    .line 5
    invoke-virtual {v1}, Lc5/o7;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lc5/w4;->a:Lc5/o7;

    .line 9
    .line 10
    iget-object v0, v0, Lc5/o7;->c:Lc5/i;

    .line 11
    .line 12
    invoke-static {v0}, Lc5/o7;->I(Lc5/j7;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lc5/u4;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lc5/i;->N(Ljava/lang/String;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

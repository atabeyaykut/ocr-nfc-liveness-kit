.class public final Lh6/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lh5/k<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lo6/d;

.field public final synthetic b:Lh6/x;


# direct methods
.method public constructor <init>(Lh6/x;Lo6/c;)V
    .locals 0

    iput-object p1, p0, Lh6/v;->b:Lh6/x;

    iput-object p2, p0, Lh6/v;->a:Lo6/d;

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

    iget-object v0, p0, Lh6/v;->b:Lh6/x;

    iget-object v1, p0, Lh6/v;->a:Lo6/d;

    invoke-static {v0, v1}, Lh6/x;->a(Lh6/x;Lo6/d;)Lh5/k;

    move-result-object v0

    return-object v0
.end method

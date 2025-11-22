.class public final Lh6/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh5/j<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh5/k;

.field public final synthetic b:Lh6/t;


# direct methods
.method public constructor <init>(Lh6/t;Lh5/z;)V
    .locals 0

    iput-object p1, p0, Lh6/q;->b:Lh6/t;

    iput-object p2, p0, Lh6/q;->a:Lh5/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lh5/k;
    .locals 2
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
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v0, p0, Lh6/q;->b:Lh6/t;

    .line 4
    .line 5
    iget-object v0, v0, Lh6/t;->d:Lh6/f;

    .line 6
    .line 7
    new-instance v1, Lh6/p;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lh6/p;-><init>(Lh6/q;Ljava/lang/Boolean;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lh6/f;->b(Ljava/util/concurrent/Callable;)Lh5/k;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

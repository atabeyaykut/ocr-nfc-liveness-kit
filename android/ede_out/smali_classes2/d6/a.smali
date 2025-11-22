.class public final Ld6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lf6/a;

.field public volatile b:Lg6/b;

.field public final c:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(La7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La7/a<",
            "Lz5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lg6/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lg6/c;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lf6/f;

    .line 7
    .line 8
    invoke-direct {v1}, Lf6/f;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Ld6/a;->b:Lg6/b;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Ld6/a;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput-object v1, p0, Ld6/a;->a:Lf6/a;

    .line 24
    .line 25
    new-instance v0, Landroidx/camera/core/impl/p;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1, p0}, Landroidx/camera/core/impl/p;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    check-cast p1, Lc6/x;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lc6/x;->a(La7/a$a;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

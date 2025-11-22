.class public final Lz2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx2/b<",
        "Lz2/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Lv2/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "La3/p;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Lb3/d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Lc3/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk9/a;Lk9/a;Lz2/g;Lk9/a;Lk9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/d;->a:Lk9/a;

    iput-object p2, p0, Lz2/d;->b:Lk9/a;

    iput-object p3, p0, Lz2/d;->c:Lk9/a;

    iput-object p4, p0, Lz2/d;->d:Lk9/a;

    iput-object p5, p0, Lz2/d;->e:Lk9/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lz2/d;->a:Lk9/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iget-object v0, p0, Lz2/d;->b:Lk9/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v3, v0

    .line 17
    check-cast v3, Lv2/e;

    .line 18
    .line 19
    iget-object v0, p0, Lz2/d;->c:Lk9/a;

    .line 20
    .line 21
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v4, v0

    .line 26
    check-cast v4, La3/p;

    .line 27
    .line 28
    iget-object v0, p0, Lz2/d;->d:Lk9/a;

    .line 29
    .line 30
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v5, v0

    .line 35
    check-cast v5, Lb3/d;

    .line 36
    .line 37
    iget-object v0, p0, Lz2/d;->e:Lk9/a;

    .line 38
    .line 39
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v6, v0

    .line 44
    check-cast v6, Lc3/b;

    .line 45
    .line 46
    new-instance v0, Lz2/c;

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    invoke-direct/range {v1 .. v6}, Lz2/c;-><init>(Ljava/util/concurrent/Executor;Lv2/e;La3/p;Lb3/d;Lc3/b;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

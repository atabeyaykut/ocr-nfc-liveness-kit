.class public final Luh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/a;"
    }
.end annotation


# instance fields
.field public final a:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Lud/d0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Lgf/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzf/d1$d;Lgf/c;Lzf/d1$a;Lzf/d1$b;Lgf/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luh/b;->a:Lk9/a;

    iput-object p2, p0, Luh/b;->b:Lk9/a;

    iput-object p3, p0, Luh/b;->c:Lk9/a;

    iput-object p4, p0, Luh/b;->d:Lk9/a;

    iput-object p5, p0, Luh/b;->e:Lk9/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Luh/a;

    .line 2
    .line 3
    invoke-direct {v0}, Luh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Luh/b;->a:Lk9/a;

    .line 7
    .line 8
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lud/d0;

    .line 13
    .line 14
    iget-object v1, p0, Luh/b;->b:Lk9/a;

    .line 15
    .line 16
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Luh/b;->c:Lk9/a;

    .line 23
    .line 24
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, p0, Luh/b;->d:Lk9/a;

    .line 31
    .line 32
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p0, Luh/b;->e:Lk9/a;

    .line 39
    .line 40
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lgf/b;

    .line 45
    .line 46
    return-object v0
.end method

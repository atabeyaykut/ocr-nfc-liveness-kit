.class public final Lrf/b;
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

.field public final f:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Landroid/content/SharedPreferences$Editor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk9/a;Lk9/a;Lk9/a;Lk9/a;Lk9/a;Lzf/d1$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrf/b;->a:Lk9/a;

    iput-object p2, p0, Lrf/b;->b:Lk9/a;

    iput-object p3, p0, Lrf/b;->c:Lk9/a;

    iput-object p4, p0, Lrf/b;->d:Lk9/a;

    iput-object p5, p0, Lrf/b;->e:Lk9/a;

    iput-object p6, p0, Lrf/b;->f:Lk9/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lrf/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lrf/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lrf/b;->a:Lk9/a;

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
    iput-object v1, v0, Lrf/a;->a:Lud/d0;

    .line 15
    .line 16
    iget-object v1, p0, Lrf/b;->b:Lk9/a;

    .line 17
    .line 18
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lrf/a;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lrf/b;->c:Lk9/a;

    .line 27
    .line 28
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, v0, Lrf/a;->c:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Lrf/b;->d:Lk9/a;

    .line 37
    .line 38
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, v0, Lrf/a;->d:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p0, Lrf/b;->e:Lk9/a;

    .line 47
    .line 48
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lgf/b;

    .line 53
    .line 54
    iput-object v1, v0, Lrf/a;->e:Lgf/b;

    .line 55
    .line 56
    iget-object v1, p0, Lrf/b;->f:Lk9/a;

    .line 57
    .line 58
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    iput-object v1, v0, Lrf/a;->f:Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    return-object v0
.end method

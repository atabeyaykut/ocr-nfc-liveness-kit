.class public final Lng/k;
.super Laf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lng/k$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laf/c<",
        "Lng/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lng/a;

.field public final i:Lng/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lng/k$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lng/k$c;-><init>(Lkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lng/i;Lng/a;Lng/l;)V
    .locals 3

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "editorChoiceWork"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "searchWork"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Laf/c;-><init>(Lr0/p;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lng/k;->h:Lng/a;

    .line 20
    .line 21
    iput-object p3, p0, Lng/k;->i:Lng/l;

    .line 22
    .line 23
    iget-object p1, p0, Lr0/z;->c:Lnc/a0;

    .line 24
    .line 25
    new-instance p3, Lng/k$a;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p3, p0, v0}, Lng/k$a;-><init>(Lng/k;Lp9/d;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {p1, v0, v2, p3, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lr0/z;->c:Lnc/a0;

    .line 37
    .line 38
    new-instance p3, Lng/k$b;

    .line 39
    .line 40
    invoke-direct {p3, p0, v0}, Lng/k$b;-><init>(Lng/k;Lp9/d;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2, p3}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lng/k$d;->a:Lng/k$d;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lr0/z;->c(Lx9/l;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lng/k$e;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lng/k$e;-><init>(Lng/k;Ljava/lang/String;Lp9/d;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    const/4 v2, 0x0

    .line 14
    iget-object v3, p0, Lr0/z;->c:Lnc/a0;

    .line 15
    .line 16
    invoke-static {v3, v1, v2, v0, p1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 17
    .line 18
    .line 19
    new-instance p1, Lng/k$f;

    .line 20
    .line 21
    invoke-direct {p1, p0, v1}, Lng/k$f;-><init>(Lng/k;Lp9/d;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lng/k;->i:Lng/l;

    .line 25
    .line 26
    invoke-static {v3, v0, p1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

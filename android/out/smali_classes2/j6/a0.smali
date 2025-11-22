.class public abstract Lj6/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj6/a0$b;,
        Lj6/a0$a;,
        Lj6/a0$e;,
        Lj6/a0$c;,
        Lj6/a0$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lj6/a0;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e()Lj6/a0$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract f()I
.end method

.method public abstract g()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract h()Lj6/a0$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public final i(JZLjava/lang/String;)Lj6/b;
    .locals 2
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lj6/b;

    .line 3
    .line 4
    new-instance v1, Lj6/b$a;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Lj6/b$a;-><init>(Lj6/a0;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lj6/b;->h:Lj6/a0$e;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lj6/a0$e;->l()Lj6/g$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, v0, Lj6/g$a;->d:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, v0, Lj6/g$a;->e:Ljava/lang/Boolean;

    .line 28
    .line 29
    if-eqz p4, :cond_0

    .line 30
    .line 31
    new-instance p1, Lj6/v;

    .line 32
    .line 33
    invoke-direct {p1, p4}, Lj6/v;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, v0, Lj6/g$a;->g:Lj6/a0$e$f;

    .line 37
    .line 38
    invoke-virtual {v0}, Lj6/g$a;->a()Lj6/g;

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Lj6/g$a;->a()Lj6/g;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, v1, Lj6/b$a;->g:Lj6/a0$e;

    .line 46
    .line 47
    :cond_1
    invoke-virtual {v1}, Lj6/b$a;->a()Lj6/b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

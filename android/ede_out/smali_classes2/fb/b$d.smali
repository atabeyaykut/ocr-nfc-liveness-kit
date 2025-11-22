.class public final Lfb/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lfb/b;


# direct methods
.method public constructor <init>(Lfb/b;)V
    .locals 0

    iput-object p1, p0, Lfb/b$d;->a:Lfb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Llb/f;Llb/b;Llb/f;)V
    .locals 0

    return-void
.end method

.method public final c(Llb/f;)Leb/s$b;
    .locals 1

    .line 1
    invoke-virtual {p1}, Llb/f;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "data"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    const-string v0, "filePartClassNames"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "strings"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    new-instance p1, Lfb/g;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lfb/g;-><init>(Lfb/b$d;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return-object p1

    .line 38
    :cond_2
    :goto_0
    new-instance p1, Lfb/f;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lfb/f;-><init>(Lfb/b$d;)V

    .line 41
    .line 42
    .line 43
    return-object p1
.end method

.method public final d(Llb/b;Llb/f;)Leb/s$a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Llb/f;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Llb/f;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "version"

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lfb/b$d;->a:Lfb/b;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    instance-of p2, p1, [I

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    check-cast p1, [I

    .line 20
    .line 21
    iput-object p1, v1, Lfb/b;->a:[I

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string v0, "multifileClassName"

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    instance-of p2, p1, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    :goto_0
    iput-object p1, v1, Lfb/b;->b:Ljava/lang/String;

    .line 41
    .line 42
    :cond_2
    :goto_1
    return-void
.end method

.method public final f(Llb/f;Lqb/f;)V
    .locals 0

    return-void
.end method

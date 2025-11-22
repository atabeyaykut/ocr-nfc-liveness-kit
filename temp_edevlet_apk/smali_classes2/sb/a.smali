.class public final Lsb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/a$c;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lsb/a;->a:Z

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 2

    .line 1
    check-cast p1, Lma/b;

    .line 2
    .line 3
    iget-boolean v0, p0, Lsb/a;->a:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lma/b;->a()Lma/b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v1

    .line 16
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Lma/b;->e()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_2
    if-nez v1, :cond_3

    .line 23
    .line 24
    sget-object p1, Lm9/v;->a:Lm9/v;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    move-object p1, v1

    .line 28
    check-cast p1, Ljava/lang/Iterable;

    .line 29
    .line 30
    :goto_1
    return-object p1
.end method

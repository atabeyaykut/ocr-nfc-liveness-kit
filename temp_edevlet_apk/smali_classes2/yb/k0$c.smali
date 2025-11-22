.class public final Lyb/k0$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/k0;-><init>(Lyb/n;Lyb/k0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/Integer;",
        "Lma/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lyb/k0;


# direct methods
.method public constructor <init>(Lyb/k0;)V
    .locals 0

    iput-object p1, p0, Lyb/k0$c;->a:Lyb/k0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lyb/k0$c;->a:Lyb/k0;

    .line 8
    .line 9
    iget-object v0, v0, Lyb/k0;->a:Lyb/n;

    .line 10
    .line 11
    iget-object v1, v0, Lyb/n;->b:Lib/c;

    .line 12
    .line 13
    invoke-static {v1, p1}, La6/a;->n(Lib/c;I)Llb/b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-boolean v1, p1, Llb/b;->c:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 23
    .line 24
    iget-object v0, v0, Lyb/l;->b:Lma/b0;

    .line 25
    .line 26
    const-string v1, "<this>"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Lma/t;->b(Lma/b0;Llb/b;)Lma/g;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    instance-of v0, p1, Lma/v0;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    check-cast p1, Lma/v0;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 43
    :goto_1
    return-object p1
.end method

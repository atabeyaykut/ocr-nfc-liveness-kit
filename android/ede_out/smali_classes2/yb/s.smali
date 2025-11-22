.class public final Lyb/s;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Llb/b;",
        "Lma/r0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lyb/t;


# direct methods
.method public constructor <init>(Lyb/t;)V
    .locals 0

    iput-object p1, p0, Lyb/s;->a:Lyb/t;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Llb/b;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lyb/s;->a:Lyb/t;

    .line 9
    .line 10
    iget-object p1, p1, Lyb/t;->h:Lac/g;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lma/r0;->a:Lma/r0$a;

    .line 16
    .line 17
    :goto_0
    return-object p1
.end method

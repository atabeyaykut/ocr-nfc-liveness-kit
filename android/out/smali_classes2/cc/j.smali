.class public final Lcc/j;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcc/e0;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcc/h;


# direct methods
.method public constructor <init>(Lcc/h;)V
    .locals 0

    iput-object p1, p0, Lcc/j;->a:Lcc/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcc/e0;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcc/j;->a:Lcc/h;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcc/h;->j(Lcc/e0;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 14
    .line 15
    return-object p1
.end method

.class public final Lt1/i;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ld2/a;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz1/b;

.field public final synthetic b:Lt1/g;


# direct methods
.method public constructor <init>(Lz1/b;Lt1/g;)V
    .locals 0

    iput-object p1, p0, Lt1/i;->a:Lz1/b;

    iput-object p2, p0, Lt1/i;->b:Lt1/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ld2/a;

    .line 2
    .line 3
    const-string v0, "bucket"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Ld2/a;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v0, p0, Lt1/i;->a:Lz1/b;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lz1/b;->f(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    sget p1, Lt1/g;->j:I

    .line 16
    .line 17
    iget-object p1, p0, Lt1/i;->b:Lt1/g;

    .line 18
    .line 19
    invoke-virtual {p1}, Lt1/g;->E()V

    .line 20
    .line 21
    .line 22
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 23
    .line 24
    return-object p1
.end method

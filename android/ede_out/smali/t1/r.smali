.class public final Lt1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/a;


# instance fields
.field public final synthetic a:Lt1/u;

.field public final synthetic b:Lt1/d;


# direct methods
.method public constructor <init>(Lt1/u;Lt1/d;)V
    .locals 0

    iput-object p1, p0, Lt1/r;->a:Lt1/u;

    iput-object p2, p0, Lt1/r;->b:Lt1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/NullPointerException;)V
    .locals 1

    .line 1
    new-instance v0, Lt1/p;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lt1/p;-><init>(Ljava/lang/NullPointerException;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lt1/r;->a:Lt1/u;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lt1/u;->a(Lx9/l;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 2

    .line 1
    new-instance v0, Lt1/q;

    .line 2
    .line 3
    iget-object v1, p0, Lt1/r;->b:Lt1/d;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lt1/q;-><init>(Lt1/d;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lt1/r;->a:Lt1/u;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lt1/u;->a(Lx9/l;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

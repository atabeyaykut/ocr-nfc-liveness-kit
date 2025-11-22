.class public final synthetic Lh6/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/a;


# instance fields
.field public final synthetic a:Lh6/x;


# direct methods
.method public synthetic constructor <init>(Lh6/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/u;->a:Lh6/x;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lh6/u;->a:Lh6/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iget-wide v3, v0, Lh6/x;->c:J

    .line 11
    .line 12
    sub-long/2addr v1, v3

    .line 13
    iget-object v0, v0, Lh6/x;->f:Lh6/t;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v3, Lh6/r;

    .line 19
    .line 20
    invoke-direct {v3, v0, v1, v2, p1}, Lh6/r;-><init>(Lh6/t;JLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, v0, Lh6/t;->d:Lh6/f;

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Lh6/f;->a(Ljava/util/concurrent/Callable;)Lh5/k;

    .line 26
    .line 27
    .line 28
    return-void
.end method

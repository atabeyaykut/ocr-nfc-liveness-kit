.class public final Lio/realm/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lio/realm/o0;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lio/realm/o0;Z)V
    .locals 0

    iput-object p1, p0, Lio/realm/l0;->a:Ljava/io/File;

    iput-object p2, p0, Lio/realm/l0;->b:Lio/realm/o0;

    iput-boolean p3, p0, Lio/realm/l0;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/l0;->b:Lio/realm/o0;

    .line 2
    .line 3
    iget-object v1, p0, Lio/realm/l0;->a:Ljava/io/File;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Lio/realm/o0;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1, v2}, Lio/realm/m0;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v1, p0, Lio/realm/l0;->c:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/io/File;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lio/realm/m0;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

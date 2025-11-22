.class public final Lo3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo3/z;


# direct methods
.method public constructor <init>(Lo3/z;)V
    .locals 0

    iput-object p1, p0, Lo3/y;->a:Lo3/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo3/y;->a:Lo3/z;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/z;->a:Lo3/a0;

    .line 4
    .line 5
    iget-object v0, v0, Lo3/a0;->b:Ln3/a$e;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, " disconnecting because it was signed out."

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ln3/a$e;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.class public final Lj9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj9/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj9/b$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj9/b$a;

    invoke-direct {v0}, Lj9/b$a;-><init>()V

    new-instance v0, Lj9/b$b;

    invoke-direct {v0}, Lj9/b$b;-><init>()V

    new-instance v0, Lj9/b$c;

    invoke-direct {v0}, Lj9/b$c;-><init>()V

    return-void
.end method

.method public static a()Lz8/b;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v1, Lz8/a;->a:I

    .line 8
    .line 9
    new-instance v1, Lz8/b;

    .line 10
    .line 11
    new-instance v2, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Lz8/b;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "No looper found"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lj9/b;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.class public abstract Lmb/h;
.super Lmb/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmb/h$e;,
        Lmb/h$d;,
        Lmb/h$b;,
        Lmb/h$c;,
        Lmb/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmb/a;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lmb/a;-><init>()V

    return-void
.end method

.method public static a(Lmb/h$c;Lmb/h;ILmb/w$c;Ljava/lang/Class;)Lmb/h$e;
    .locals 7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v6, Lmb/h$e;

    new-instance v4, Lmb/h$d;

    const/4 v0, 0x1

    invoke-direct {v4, p2, p3, v0}, Lmb/h$d;-><init>(ILmb/w;Z)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmb/h$e;-><init>(Lmb/h$c;Ljava/lang/Object;Lmb/h;Lmb/h$d;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static h(Lmb/h$c;Ljava/io/Serializable;Lmb/h;ILmb/w;Ljava/lang/Class;)Lmb/h$e;
    .locals 7

    new-instance v6, Lmb/h$e;

    new-instance v4, Lmb/h$d;

    const/4 v0, 0x0

    invoke-direct {v4, p3, p4, v0}, Lmb/h$d;-><init>(ILmb/w;Z)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmb/h$e;-><init>(Lmb/h$c;Ljava/lang/Object;Lmb/h;Lmb/h$d;Ljava/lang/Class;)V

    return-object v6
.end method

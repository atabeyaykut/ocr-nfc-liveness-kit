.class public final Lg3/d;
.super Ln3/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/a$a<",
        "Lf4/e;",
        "Lg3/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln3/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Ln3/a$c;Ln3/d$a;Ln3/d$b;)Ln3/a$e;
    .locals 7

    move-object v4, p4

    check-cast v4, Lg3/a$a;

    new-instance p4, Lf4/e;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lf4/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Lg3/a$a;Ln3/d$a;Ln3/d$b;)V

    return-object p4
.end method

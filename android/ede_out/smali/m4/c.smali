.class public final Lm4/c;
.super Ln3/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln3/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Ln3/a$c;Lo3/c;Lo3/j;)Ln3/a$e;
    .locals 6

    check-cast p4, Ln3/a$c$c;

    new-instance p4, Lm4/q;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lm4/q;-><init>(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Lo3/c;Lo3/j;)V

    return-object p4
.end method

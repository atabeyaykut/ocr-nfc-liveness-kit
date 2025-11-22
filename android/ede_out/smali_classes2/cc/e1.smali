.class public abstract Lcc/e1;
.super Lcc/l1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/e1$a;
    }
.end annotation


# static fields
.field public static final b:Lcc/e1$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcc/e1$a;

    invoke-direct {v0}, Lcc/e1$a;-><init>()V

    sput-object v0, Lcc/e1;->b:Lcc/e1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcc/l1;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcc/e0;)Lcc/i1;
    .locals 0

    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcc/e1;->g(Lcc/c1;)Lcc/i1;

    move-result-object p1

    return-object p1
.end method

.method public abstract g(Lcc/c1;)Lcc/i1;
.end method

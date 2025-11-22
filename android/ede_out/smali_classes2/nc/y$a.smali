.class public final Lnc/y$a;
.super Lp9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnc/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp9/b<",
        "Lp9/e;",
        "Lnc/y;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lp9/e$a;->a:Lp9/e$a;

    sget-object v1, Lnc/y$a$a;->a:Lnc/y$a$a;

    invoke-direct {p0, v0, v1}, Lp9/b;-><init>(Lp9/f$c;Lx9/l;)V

    return-void
.end method

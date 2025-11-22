.class public final La6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz5/a$a;


# direct methods
.method public constructor <init>(Lb5/a;Ld6/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La6/f;->a:Lz5/a$a;

    new-instance p2, La6/e;

    invoke-direct {p2, p0}, La6/e;-><init>(La6/f;)V

    invoke-virtual {p1, p2}, Lb5/a;->a(Lb5/a$a;)V

    return-void
.end method

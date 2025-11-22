.class public final La6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Lz5/a$a;


# direct methods
.method public constructor <init>(Lb5/a;Ld6/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La6/d;->b:Lz5/a$a;

    new-instance p2, La6/c;

    invoke-direct {p2, p0}, La6/c;-><init>(La6/d;)V

    invoke-virtual {p1, p2}, Lb5/a;->a(Lb5/a$a;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, La6/d;->a:Ljava/util/HashSet;

    return-void
.end method

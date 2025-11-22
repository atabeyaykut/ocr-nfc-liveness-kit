.class public final Lra/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lra/i$a;
    }
.end annotation


# static fields
.field public static final a:Lra/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lra/i;

    invoke-direct {v0}, Lra/i;-><init>()V

    sput-object v0, Lra/i;->a:Lra/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcb/l;)Lra/i$a;
    .locals 1

    const-string v0, "javaElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lra/i$a;

    check-cast p1, Lsa/v;

    invoke-direct {v0, p1}, Lra/i$a;-><init>(Lsa/v;)V

    return-object v0
.end method

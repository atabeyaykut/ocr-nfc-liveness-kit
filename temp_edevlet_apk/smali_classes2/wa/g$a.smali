.class public final Lwa/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwa/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lwa/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwa/g$a;

    invoke-direct {v0}, Lwa/g$a;-><init>()V

    sput-object v0, Lwa/g$a;->a:Lwa/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcb/n;Lpa/l0;)V
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "descriptor"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

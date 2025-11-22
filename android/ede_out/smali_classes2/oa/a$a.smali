.class public final Loa/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loa/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Loa/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Loa/a$a;

    invoke-direct {v0}, Loa/a$a;-><init>()V

    sput-object v0, Loa/a$a;->a:Loa/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lac/d;)Ljava/util/Collection;
    .locals 0

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1
.end method

.method public final b(Lac/d;)Ljava/util/Collection;
    .locals 1

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1
.end method

.method public final d(Llb/f;Lac/d;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "classDescriptor"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1
.end method

.method public final e(Lac/d;)Ljava/util/Collection;
    .locals 1

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm9/v;->a:Lm9/v;

    return-object p1
.end method

.class public abstract Lc5/u2;
.super Lcom/google/android/gms/internal/measurement/j0;
.source "SourceFile"

# interfaces
.implements Lc5/v2;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/j0;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final w0(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    sget-object p1, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/y7;

    move-object p2, p0

    check-cast p2, Lc5/w4;

    invoke-virtual {p2, p1}, Lc5/w4;->s0(Lc5/y7;)V

    goto/16 :goto_3

    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    sget-object v1, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lc5/y7;

    move-object v1, p0

    check-cast v1, Lc5/w4;

    invoke-virtual {v1, p1, p2}, Lc5/w4;->p(Landroid/os/Bundle;Lc5/y7;)V

    goto/16 :goto_3

    :pswitch_3
    sget-object p1, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/y7;

    move-object p2, p0

    check-cast p2, Lc5/w4;

    invoke-virtual {p2, p1}, Lc5/w4;->r(Lc5/y7;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p0

    check-cast v2, Lc5/w4;

    invoke-virtual {v2, p1, v1, p2}, Lc5/w4;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lc5/y7;

    move-object v2, p0

    check-cast v2, Lc5/w4;

    invoke-virtual {v2, p1, v1, p2}, Lc5/w4;->b0(Ljava/lang/String;Ljava/lang/String;Lc5/y7;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/k0;->a:Ljava/lang/ClassLoader;

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 2
    :cond_0
    move-object p2, p0

    check-cast p2, Lc5/w4;

    invoke-virtual {p2, p1, v2, v3, v1}, Lc5/w4;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/k0;->a:Ljava/lang/ClassLoader;

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 4
    :cond_1
    sget-object v3, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lc5/y7;

    move-object v3, p0

    check-cast v3, Lc5/w4;

    invoke-virtual {v3, p1, v2, v1, p2}, Lc5/w4;->S(Ljava/lang/String;Ljava/lang/String;ZLc5/y7;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_4

    :pswitch_8
    sget-object p1, Lc5/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/b;

    move-object p2, p0

    check-cast p2, Lc5/w4;

    .line 5
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v2, p1, Lc5/b;->c:Lc5/r7;

    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v2, p1, Lc5/b;->a:Ljava/lang/String;

    invoke-static {v2}, Lr3/r;->f(Ljava/lang/String;)V

    iget-object v2, p1, Lc5/b;->a:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Lc5/w4;->x0(Ljava/lang/String;Z)V

    new-instance v2, Lc5/b;

    invoke-direct {v2, p1}, Lc5/b;-><init>(Lc5/b;)V

    new-instance p1, Lc5/k4;

    invoke-direct {p1, p2, v2, v1}, Lc5/k4;-><init>(Ljava/lang/Object;Ls3/a;I)V

    invoke-virtual {p2, p1}, Lc5/w4;->y0(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 6
    :pswitch_9
    sget-object p1, Lc5/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/b;

    sget-object v1, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lc5/y7;

    move-object v1, p0

    check-cast v1, Lc5/w4;

    invoke-virtual {v1, p1, p2}, Lc5/w4;->q0(Lc5/b;Lc5/y7;)V

    goto/16 :goto_3

    :pswitch_a
    sget-object p1, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/y7;

    move-object p2, p0

    check-cast p2, Lc5/w4;

    invoke-virtual {p2, p1}, Lc5/w4;->o(Lc5/y7;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    check-cast v1, Lc5/w4;

    invoke-virtual/range {v1 .. v6}, Lc5/w4;->Q(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_c
    sget-object p1, Lc5/s;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/s;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    move-object v1, p0

    check-cast v1, Lc5/w4;

    invoke-virtual {v1, p1, p2}, Lc5/w4;->Y(Lc5/s;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_4

    :pswitch_d
    sget-object p1, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/y7;

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    .line 8
    :cond_2
    move-object p2, p0

    check-cast p2, Lc5/w4;

    .line 9
    invoke-virtual {p2, p1}, Lc5/w4;->z0(Lc5/y7;)V

    iget-object p1, p1, Lc5/y7;->a:Ljava/lang/String;

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v2, p2, Lc5/w4;->a:Lc5/o7;

    invoke-virtual {v2}, Lc5/o7;->l()Lc5/h4;

    move-result-object v3

    new-instance v4, Lc5/u4;

    invoke-direct {v4, p2, p1}, Lc5/u4;-><init>(Lc5/w4;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lc5/h4;->n(Ljava/util/concurrent/Callable;)Lc5/f4;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc5/t7;

    if-nez v1, :cond_4

    iget-object v5, v4, Lc5/t7;->c:Ljava/lang/String;

    invoke-static {v5}, Lc5/v7;->S(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_4
    new-instance v5, Lc5/r7;

    invoke-direct {v5, v4}, Lc5/r7;-><init>(Lc5/t7;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_2
    invoke-virtual {v2}, Lc5/o7;->m()Lc5/e3;

    move-result-object v1

    invoke-static {p1}, Lc5/e3;->q(Ljava/lang/String;)Lc5/d3;

    move-result-object p1

    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    const-string v2, "Failed to get user properties. appId"

    invoke-virtual {v1, p1, v2, p2}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 10
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_4

    :pswitch_e
    sget-object p1, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/y7;

    move-object p2, p0

    check-cast p2, Lc5/w4;

    invoke-virtual {p2, p1}, Lc5/w4;->C(Lc5/y7;)V

    goto :goto_3

    :pswitch_f
    sget-object p1, Lc5/s;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/s;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-object p2, p0

    check-cast p2, Lc5/w4;

    .line 11
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-static {v2}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v0}, Lc5/w4;->x0(Ljava/lang/String;Z)V

    new-instance v3, Lc5/s4;

    invoke-direct {v3, p2, p1, v2, v1}, Lc5/s4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v3}, Lc5/w4;->y0(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 12
    :pswitch_10
    sget-object p1, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/y7;

    move-object p2, p0

    check-cast p2, Lc5/w4;

    invoke-virtual {p2, p1}, Lc5/w4;->d0(Lc5/y7;)V

    goto :goto_3

    :pswitch_11
    sget-object p1, Lc5/r7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/r7;

    sget-object v1, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lc5/y7;

    move-object v1, p0

    check-cast v1, Lc5/w4;

    invoke-virtual {v1, p1, p2}, Lc5/w4;->A(Lc5/r7;Lc5/y7;)V

    goto :goto_3

    :pswitch_12
    sget-object p1, Lc5/s;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc5/s;

    sget-object v1, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/k0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lc5/y7;

    move-object v1, p0

    check-cast v1, Lc5/w4;

    invoke-virtual {v1, p1, p2}, Lc5/w4;->h0(Lc5/s;Lc5/y7;)V

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
